import { toPascalCase } from "@graphql-codegen/plugin-helpers";
import fragmentClassNames from "./fragment-class-names";
import { dedupe, arrayify } from "./utils";
import { OperationDefinitionNode, parse, visit, ASTNode } from "graphql";

import { Operation, Fragment } from "graphql-codegen-core";

export interface MixinConfig {
  /**
   * Adds `with {{name}}` blocks to selection sets/fragments with the given fields,
   * or all selection sets/fragments if `when` is not configured
   *
   * @example { mixins: [{ name: "Entity", fields: [ "id" ] }
   */
  mixins?: Array<{
    /**
     * The name of the mixin class
     */
    name: string;
    /**
     * Condition by which to mixin
     */
    when?: {
      fields: Array<string>;
    };
  }>;
}

// flilter configured mixins based on "when" fields
export const configureResolveMixins = ({ mixins = [] }: MixinConfig & object) =>
  function resolveMixins(fields = []) {
    let fieldNames = fields.map(f => f.name);
    return dedupe(
      mixins
        .filter(({ when = { fields: [] } }) => {
          for (let requiredField of when.fields) {
            if (!fieldNames.includes(requiredField)) {
              return false;
            }
          }
          return true;
        })
        .map(mixin => mixin.name)
    );
  };

const builtinInterfaces = [
  /*"ToJson"*/
];

// apply whatever inheritence keyword
function inherit(inheritanceKeyword, ..._parents) {
  const parents = _parents.filter(p => p);
  if (parents.length == 0) {
    return "";
  }
  return `${inheritanceKeyword} ${parents.map(toPascalCase).join(", ")} `;
}

function nodeName(node: ASTNode): string {
  if ("alias" in node && node.alias) {
    return node.alias.value || "";
  }
  if ("name" in node && node.name) {
    return node.name.value || "";
  }
  if ("value" in node) {
    let v = node.value;
    return v === undefined || v === null ? "" : v.toString();
  }
  return "";
}

/* I'm just not going to support foo { biz { bar } ...bizContainingBangFragment }
let fragmentSubPaths = {};

export function registerFragmentPaths(frag: Fragment) {
  visit(parse(frag.document), {
    enter(node, key, parent, path, ancestors) {
      const name = nodeName(node);
      if (name) {
        const namePath = JSON.stringify(
          arrayify(ancestors as ASTNode[])
            .map(nodeName)
            .filter(a => a)
        );
        fragmentSubPaths[namePath] = dedupe([
          ...(fragmentSubPaths[namePath] || []),
          nodeName(node)
        ]);
      }
    }
  });
}

export function withFragmentPaths(op: Operation | Fragment, { fn }) {
  let fragmentPaths: { [p: string]: string[] } = JSON.parse(
    JSON.stringify(fragmentSubPaths)
  );
  const ast = parse(op.document);
  visit(ast, {
    FragmentSpread: {
      enter(node, key, parent, path, ancestors) {
        const namePath = JSON.stringify(
          arrayify(ancestors as ASTNode[])
            .map(nodeName)
            .filter(a => a)
        );
        fragmentPaths[namePath] = dedupe([
          ...(fragmentPaths[namePath] || []),
          nodeName(node)
        ]);
      }
    }
  });
  return fn({
    ...op,
    fragmentPaths
  });
}
*/

// we extend from interfaces in dart to allow functionality
// piggybacking via replaceTypes
// TODO base type / entity modeling
//   should be done via postgraphile plugin
//   right now we replace Node with Entity, which is hacky
//   ex. Query becomes an "Entity"
export default function configureClassExtends({ mixins }) {
  function classExtends({
    hash: {
      onMixin = false,
      baseType,
      mixins = [],
      fragments = [],
      interfaces = []
    }
  }) {
    if (onMixin) {
      return (
        inherit("on", baseType) +
        inherit(",", ...mixins) +
        inherit(
          "implements",
          // we copy all fragment fields to fragments that spread
          // because dart has strange mixin inheritance
          ...fragmentClassNames(fragments),
          ...builtinInterfaces,
          ...interfaces
        )
      );
    }
    return (
      inherit("extends", baseType) +
      inherit("with", ...mixins, ...fragmentClassNames(fragments)) +
      inherit("implements", ...builtinInterfaces, ...interfaces)
    );
  }
  return classExtends;
}
