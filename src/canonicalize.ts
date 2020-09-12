/**
 *  Heavily modified, but started with mergeAst from graphiql. Original license:
 *
 *  Copyright (c) 2019 GraphQL Contributors.
 *
 *  This source code is licensed under the MIT license found in the
 *  LICENSE file in the root directory of this source tree.
 */

import {
  DefinitionNode,
  SelectionNode,
  DocumentNode,
  FieldNode
} from "graphql/language/ast";

import * as deepmerge from "deepmerge";
import { requiredSubselectionMessage } from "graphql/validation/rules/ScalarLeafs";
import { print } from "graphql";

function dedupe<T = string>(arr: T[], hash = JSON.stringify) {
  let seen: Set<string> = new Set();
  return arr.filter(item => {
    const hashed = hash(item);
    if (seen.has(hashed)) {
      return false; // already seen
    }
    seen.add(hashed);
    return true; // fresh
  });
}

function _mergeOn<T = any>(
  fields: readonly T[],
  identify: (item: T) => string,
  merge: (item: T, itemB: T) => T
) {
  let uniqueMap = new Map<string, T>();
  fields.forEach(item => {
    const existing = uniqueMap.get(identify(item));
    uniqueMap.set(identify(item), existing ? merge(existing, item) : item);
  });

  return Array.from(uniqueMap.values());
}

function selectionsOf(s: FieldNode) {
  return s.selectionSet ? s.selectionSet.selections : [];
}

type Merge = (s: SelectionNode, s2: SelectionNode) => SelectionNode;

const withMergedDirectives = (merge: Merge): Merge => (s1, s2) => {
  let r = merge(s1, s2);
  if (s1.directives || s2.directives) {
    return {
      ...r,
      directives: dedupe([
        ...(r.directives || []),
        ...(s1.directives || []),
        ...(s2.directives || [])
      ])
    };
  }
  return r;
};

function mergeSameFields(definition: DefinitionNode | SelectionNode) {
  if (!("selectionSet" in definition) || !definition.selectionSet) {
    return definition;
  }
  return {
    ...definition,
    selectionSet: {
      ...definition.selectionSet,
      selections: _mergeOn(
        definition.selectionSet.selections,
        (s: SelectionNode) => {
          switch (s.kind) {
            case "Field":
              return JSON.stringify([
                s.kind,
                s.name.value,
                (s.alias || s.name).value
              ]);
            case "FragmentSpread":
              return JSON.stringify([s.kind, s.name.value]);
            case "InlineFragment":
              return JSON.stringify([s.kind, s.typeCondition.name.value]);
          }
        },
        withMergedDirectives((s: SelectionNode, s2: SelectionNode) => {
          switch (s.kind) {
            case "Field":
              let result = {
                ...(s2 as FieldNode)
              };
              if (s.selectionSet) {
                result.selectionSet = {
                  ...(result.selectionSet || s.selectionSet),
                  selections: [...selectionsOf(s), ...selectionsOf(result)]
                };
              }
              return result;
            case "FragmentSpread":
              // merging
              return s2;
            case "InlineFragment":
              return s2;
          }
        })
      ).map(mergeSameFields)
    }
  };
}

export default function canonicalize(
  node: DefinitionNode | SelectionNode | DocumentNode
) {
  if (node.kind == "Document") {
    return {
      ...node,
      definitions: node.definitions.map(mergeSameFields)
    };
  }
  return mergeSameFields(node);
}
