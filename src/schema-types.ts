import buildPlugin, { defaultDirectives } from "./build-plugin";
import schemaTemplate, * as partials from "./templates/schema";

export const plugin = buildPlugin("schema", schemaTemplate, partials, {
  ...defaultDirectives,
  imports: [...defaultDirectives.imports, "package:equatable/equatable.dart"]
});
