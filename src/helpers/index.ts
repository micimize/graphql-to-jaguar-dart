import { GraphQLSchema } from "graphql";

import { helpers as gqlHelpers } from "graphql-codegen-plugin-handlebars-helpers";
import { toPascalCase } from "@graphql-codegen/plugin-helpers";

import expectedGeneratedFileFor from "./expected-generated-file-for";
import multilineComment from "./multiline-comment";
import configureClassExtends, {
  //registerFragmentPaths,
  //withFragmentPaths,
  configureResolveMixins,
  MixinConfig
} from "./class-extends";
import configureResolveType, {
  inlineFragmentName as configureInlineFragmentName
} from "./resolve-type";
import hackFragmentFields from "./hack-fragment-fields";
import ignoreType from "./ignore-type";
import fragmentClassNames from "./fragment-class-names";
import configurAddInputHelpers, {
  AddInputHelpersConfig
} from "./add-input-helpers";

import {
  log,
  logThis,
  concat,
  arrayify,
  eachBackwards,
  takeFirst,
  camelCase,
  stripSuffix,
  transformCharacters,
  wrapFields,
  inputBaseType,
  takeLastWord,
  dartDirective,
  callMethod,
  emptySafeEach,
  eachUniqueBy,
  eachDuplicateBy,
  deepMergeOnKeys
} from "./utils";

function wrapHelpers<T>(helpers: T) {
  return Object.keys(helpers).reduce(
    (wrapped, h) => ((wrapped[h] = _logErrors(helpers[h])), wrapped),
    {}
  ) as T & { [key: string]: Handlebars.HelperDelegate };
}

function _logErrors(fn) {
  return (...args) => {
    try {
      // console.log(fn.name, args.slice(0, -1))
      return fn(...args);
    } catch (e) {
      console.error(
        `ERROR ${e} thrown by helper ${fn.name}(${args.slice(0, -1)})`
      );
      throw e;
    }
  };
}

const helpers = wrapHelpers({
  ...gqlHelpers,
  toPascalCase,
  log,
  logThis,
  takeFirst,
  camelCase,
  concat,
  eachBackwards,
  stripSuffix,
  multilineComment,
  hackFragmentFields,
  ignoreType,
  fragmentClassNames,
  arrayify,
  transformCharacters,
  wrapFields,
  inputBaseType,
  takeLastWord,
  expectedGeneratedFileFor,
  dartDirective,
  emptySafeEach,
  eachUniqueBy,
  eachDuplicateBy,
  callMethod,
  //registerFragmentPaths,
  //withFragmentPaths,
  deepMergeOnKeys: deepMergeOnKeys as any
});

export interface Config extends AddInputHelpersConfig, MixinConfig {
  inlineFragmentNameTemplate: string;
}

export default function configureHelpers(schema: GraphQLSchema, config) {
  const ifn = configureInlineFragmentName(config);
  return {
    ...helpers,
    dartName(name: string): string {
      return helpers.transformCharacters(name, config.transformCharacters);
    },
    resolveType: configureResolveType(config),
    classExtends: configureClassExtends(config),
    resolveMixins: configureResolveMixins(config),
    addInputHelpers: configurAddInputHelpers(schema, config),
    inlineFragmentName: (type: string) => camelCase(ifn(toPascalCase(type)))
  };
}
