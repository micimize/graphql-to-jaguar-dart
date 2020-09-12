import {
  capitalize,
  dedupe,
  _deepMergeOnKeys as deepMergeOnKeys
} from "./utils";

var fragmentFields = {};

function getFields(name) {
  const frag = fragmentFields[name];
  if (!frag) {
    console.error(`
        Attempted to get fields from fragment ${name} before they were observed!

        Because graphql-to-dart is a massive hack,
        and we want to add the fields from fragments into the constructor,
        you need to glob your input files such that fragments are processed before operations.
        For example, name your fragments with an underscore like "_some_fragments.gql",
        and glob them like so:
          documents:
            - 'lib/**/_*.gql'
            - 'lib/**/!(_)*.gql'
        
        Proceeding, though the generator will likely fail
        `);
  }
  let { nestedFragments, fields, ...context } = frag;
  fields = fields.map(field => Object.assign(field, context));
  nestedFragments.forEach(nested => {
    fields = fields.concat(getFields(nested));
  });
  return fields;
}
// Grab fragments and add them to inhereting classes
export default function hackFragmentFields(
  action: "ensure_unique" | "add" | "get",
  {
    hash: {
      name,
      fragments,
      fields = [],
      contextModels = [],
      nestedFragments = []
    }
  }
) {
  if (action === "ensure_unique") {
    assert(typeof name === "string" && name != "", { action, name });
    return !(name in fragmentFields);
  }

  if (action === "add") {
    assert(typeof name === "string" && name != "", { action, name });
    fragmentFields[name] = {
      contextName: capitalize(name),
      contextModels,
      nestedFragments: nestedFragments.map(f => f.fragmentName),
      fields
    };
    return "";
  }

  if (action === "get") {
    assert(Array.isArray(fragments), { action, fragments });
    //dedupe(
    return deepMergeOnKeys(
      fragments.reduce(
        (fragFields, frag) => [...fragFields, ...getFields(frag.fragmentName)],
        fields
      ),
      ["schemaFieldName", "name"]
    );
  }
  throw Error(`invalid hackFragmentFields action ${action}`);

  /*
  if (action === "list") {
    assert(Array.isArray(fragments), { action, fragments });
    return fragments.map(frag => getFields(frag.fragmentName));
  }
  */
}

function assert(cond: boolean, { action, ...rest }): void {
  if (!cond) {
    const required = Object.keys(rest)[0];
    throw Error(
      `hackFragmentFields(${action}, ...) requires a ${required} argument, but received ${rest[required]}`
    );
  }
}
