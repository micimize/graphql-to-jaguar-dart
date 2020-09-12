const { SafeString } = require("handlebars");

function interpolateTemplate(template, params) {
  const names = Object.keys(params);
  const vals = Object.values(params);
  return new Function(...names, `return \`${template}\`;`)(...vals);
}

const primitives = {
  String: "String",
  Int: "int",
  Float: "double",
  Boolean: "bool",
  ID: "String",

  int: "int",
  bool: "bool",
  double: "double",
  num: "num",
  dynamic: "dynamic",

  Object: "Object",
  DateTime: "DateTime"
};

const INLINE_FRAGMENT_FIELD_TEMPLATE = { prefix: "", suffix: "InlineFragment" };

export const inlineFragmentName = ({
  inlineFragmentFieldNames: { prefix = "", suffix = "InlineFragment" } = {}
}) => (type: string) => prefix + type.replace(/InlineFragment$/, "") + suffix;

const JSON_CONVERTER_TEMPLATE = "@${type}Converter()";

function jsonConverter(type: string) {
  return interpolateTemplate(JSON_CONVERTER_TEMPLATE, { type });
}

function wrap(isArray, fieldType) {
  return isArray ? `List<${fieldType}>` : fieldType;
}

function asIrreducible(rawTypeText, irreducibles = []) {
  if (irreducibles.includes(rawTypeText.replace(/\[|\]|!/g, ""))) {
    return rawTypeText.replace(/\[|\]|!/g, "");
  }
}

type Scalars = Record<"String" | "Int" | "Float" | "Boolean" | "ID", string>;

export type ResolveTypeConfig = {
  scalars?: Partial<Scalars>;
  /**
   * Alias schema scalars to dart classes,
   * decorates references with @ScalarConverter
   * provided from scalars file
   */
  customScalars?: { [type: string]: string };

  // don't emit classes for these types,
  // merely alias their references
  replaceTypes?: { [type: string]: string };

  irreducibleTypes?: Array<string>;
};

type Qualifier = "final" | "inline" | "get";
function qualify({
  qualifier,
  type,
  decorator = ""
}: {
  qualifier: Qualifier;
  type: string;
  decorator?: string;
}) {
  switch (qualifier) {
    case "final":
      return `${decorator ? decorator + "\n" : ""}final ${type}`;
    case "get":
      return `${decorator}\n${type} get`;
    default:
      return type;
  }
}

export default function configureResolveType({
  scalars = {},
  replaceTypes = {},
  irreducibleTypes = []
}: ResolveTypeConfig) {
  function resolveType(
    type: string,
    qualifier: "final" | "inline" | "get",
    contextName: string,
    contextModels = [],
    isArray: boolean,
    rawTypeText: string
  ) {
    let fieldType =
      asIrreducible(rawTypeText, irreducibleTypes) ||
      (contextModels.filter(({ modelType }) => modelType === type).length
        ? contextName + type
        : primitives[type] || type || "Object");

    if (replaceTypes[fieldType]) {
      fieldType = replaceTypes[fieldType];
    }
    if (scalars[fieldType]) {
      fieldType = scalars[fieldType];
      if (!(fieldType in primitives)) {
        return new SafeString(
          qualify({
            qualifier,
            decorator: jsonConverter(fieldType),
            type: wrap(isArray, fieldType)
          })
        );
      } else {
        fieldType = primitives[fieldType];
      }
    }
    return new SafeString(
      qualify({ qualifier, type: wrap(isArray, fieldType) })
    );
  }
  return resolveType;
}
