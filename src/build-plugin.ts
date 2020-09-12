import * as Handlebars from "handlebars";
import { GraphQLSchema } from "graphql";
import {
  DocumentFile,
  schemaToTemplateContext,
  transformDocumentsFiles
} from "graphql-codegen-core";
import { PluginFunction } from "@graphql-codegen/plugin-helpers";
import { flattenTypes } from "graphql-codegen-plugin-helpers";
import configureHelpers, { Config as HelperConfig } from "./helpers";
import { dedupe } from "./helpers/utils";
import { basename, extname } from "path";
import canonicalize from "./canonicalize";

type Scalars = Record<"String" | "Int" | "Float" | "Boolean" | "ID", string>;

type Directive = string;
type DartFileDirectives = {
  imports?: Directive[];
  parts?: Directive[];
  exports?: Directive[];
};

export function mergeDirectives(
  a: DartFileDirectives = {},
  b: DartFileDirectives = {}
) {
  return ["imports", "exports", "parts"].reduce(
    (merged, directive) => (
      (merged[directive] = dedupe([
        ...(a[directive] || []),
        ...(b[directive] || [])
      ])),
      merged
    ),
    {}
  );
}

export type DartConfig = HelperConfig & {
  scalars?: Partial<Scalars>;
  // alias schema scalars to dart classes,
  // decorate references with @JsonKey(fromJson: fromJsonToScalar, toJson: fromScalarToJson)
  // provided from scalars file
  customScalars?: { [type: string]: string };

  // don't emit classes for these types,
  // merely alias their references
  replaceTypes?: { [type: string]: string };

  irreducibleTypes?: Array<string>;

  /**
   * Field to base union / inline fragment resolution on. Field will be `@protected`
   * @default '__typename'
   */
  typenameField?: string;

  /**
   * { prefix, suffix } to wrap inline fragment type names with
   *
   * @example '{ prefix: "on", suffix: "" } => SomeTypeInlineFragment onSomeType'
   * @default '{ prefix: "", suffix: "InlineFragment" }'
   */
  inlineFragmentFieldNames?: { prefix?: string; suffix?: string };

  /**
   * Mapping of regexs to replacement characters.
   * @example `{ "^_": "underscored" }` results in "__typename" -> "underscoredTypename"
   * @example `{ "^_": "u_" }` results in "__typename" -> "u_typename" for snakecase support
   * @default `{ "^_+": "" }` resulting in  "typename" -> "typename"
   */
  transformCharacters?: { [type: string]: string };

  /**
   * Adds `export "./source_file.ast.dart" show document;` directives,
   * @default false
   */
  integrateGqlCodeGenAst?: boolean;

  schema?: DartFileDirectives;
  documents?: DartFileDirectives;
};

export const defaultDirectives = {
  imports: [
    "package:meta/meta.dart",
    "package:json_annotation/json_annotation.dart"
  ],
  parts: [],
  exports: []
};

const defaultScalars: Scalars = {
  String: "String",
  Int: "int",
  Float: "double",
  Boolean: "bool",
  ID: "String"
};

function registerMapWith<T>(
  registerFn: (name: string, value: T) => void,
  object: { [name: string]: T }
) {
  Object.entries(object).forEach(([name, helper]) => registerFn(name, helper));
}

export default function buildPlugin(
  route: "schema" | "documents",
  rootTemplate,
  partials,
  dartDirectives: DartFileDirectives
): PluginFunction<DartConfig> {
  return async (
    schema: GraphQLSchema,
    documents: DocumentFile[],
    config: DartConfig,
    { outputFile }
  ): Promise<string> => {
    if (!config.typenameField) {
      config.typenameField = "__typename";
    }
    config[route] = mergeDirectives(dartDirectives, config[route]);
    if (route === "documents" && config.integrateGqlCodeGenAst) {
      config[route].exports.push(
        `export '${basename(documents[0].filePath, ".graphql") +
          ".ast.g.dart"}' show document;`
      );
    }

    const templateContext = schemaToTemplateContext(schema);

    const transformedDocuments = transformDocumentsFiles(
      schema,
      documents.map(d => ({
        ...d,
        content: canonicalize(d.content)
      }))
    );

    const flattenDocuments = flattenTypes(transformedDocuments);

    registerMapWith<Handlebars.HelperDelegate>(
      (...args) => Handlebars.registerHelper(...args),
      configureHelpers(schema, config)
    );

    registerMapWith<Handlebars.Template<any>>(
      (...args) => Handlebars.registerPartial(...args),
      partials
    );

    const scalars = Object.assign(
      {},
      defaultScalars,
      config.scalars || {},
      config.customScalars || {}
    );
    const handlebarsContext = {
      outputFile,
      config,
      primitives: scalars,
      scalars,
      ...templateContext,
      ...flattenDocuments
    };

    try {
      return Handlebars.compile(rootTemplate)(handlebarsContext);
    } catch (e) {
      console.trace(e);
      throw e;
    }
  };
}
