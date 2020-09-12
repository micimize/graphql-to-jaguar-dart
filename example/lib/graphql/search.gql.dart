// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';

part 'search.gql.g.dart';

@JsonSerializable()
class SearchVariables {
  @JsonKey(required: false, disallowNullValue: false)
  final String text;

  SearchVariables({
    this.text,
  });

  factory SearchVariables.fromJson(Map<String, dynamic> json) =>
      _$SearchVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$SearchVariablesToJson(this);
}

@JsonSerializable()
class Search_StarshipInlineFragment extends Starship {
  static final String schemaTypeName = "Starship";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'id', required: true, disallowNullValue: true)
  String get id => fields.id;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  Search_StarshipInlineFragment({
    this.typename,
    @required String id,
  }) : super(
          id: id,
        );

  Search_StarshipInlineFragment.fromObjectType(
    Starship objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  Search_StarshipInlineFragment.partial({
    this.typename,
    String id,
  }) : super(
          id: id,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    return missingFields;
  }

  /// Creates a new [Search_StarshipInlineFragment] with the given non-null values overridden
  Search_StarshipInlineFragment copyWith({
    String typename,
    String id,
  }) =>
      Search_StarshipInlineFragment(
        typename: typename ?? this.typename,
        id: id ?? this.id,
      );

  /// Creates a new [Search_StarshipInlineFragment] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  Search_StarshipInlineFragment copyWithout({
    bool typename = false,
    bool id = false,
  }) =>
      Search_StarshipInlineFragment(
        typename: typename == false ? this.typename : null,
        id: id == false ? this.id : null,
      );

  /// Creates a new [Search_StarshipInlineFragment] with non-null values from [other] as attribute overrides
  Search_StarshipInlineFragment mergedLeftWith(
      covariant Search_StarshipInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      id: other.id,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  Search_StarshipInlineFragment operator <<(
          covariant Search_StarshipInlineFragment other) =>
      mergedLeftWith(other);

  factory Search_StarshipInlineFragment.fromJson(Map<String, dynamic> json) =>
      _$Search_StarshipInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$Search_StarshipInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class SearchSearchCopyForTesting extends SearchResult {
  static final String schemaTypeName = "SearchResult";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(ignore: true)
  final Search_StarshipInlineFragment onStarship;

  @override
  List<Object> get props => [
        ...super.props,
        onStarship,
      ];

  SearchSearchCopyForTesting({
    this.typename,
    this.onStarship,
  }) : super();

  SearchSearchCopyForTesting.fromObjectType(
    SearchResult objectType, {
    this.typename,
    this.onStarship,
  }) : super.fromFields(objectType.fields);

  SearchSearchCopyForTesting.partial({
    this.typename,
    this.onStarship,
  }) : super();

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [SearchSearchCopyForTesting] with the given non-null values overridden
  SearchSearchCopyForTesting copyWith({
    String typename,
    Search_StarshipInlineFragment onStarship,
  }) =>
      SearchSearchCopyForTesting(
        typename: typename ?? this.typename,
        onStarship: onStarship != null
            ? this.onStarship?.mergedLeftWith(onStarship) ?? onStarship
            : this.onStarship,
      );

  /// Creates a new [SearchSearchCopyForTesting] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  SearchSearchCopyForTesting copyWithout({
    bool typename = false,
    bool onStarship = false,
  }) =>
      SearchSearchCopyForTesting(
        typename: typename == false ? this.typename : null,
        onStarship: onStarship == false ? this.onStarship : null,
      );

  /// Creates a new [SearchSearchCopyForTesting] with non-null values from [other] as attribute overrides
  SearchSearchCopyForTesting mergedLeftWith(
      covariant SearchSearchCopyForTesting other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      onStarship: other.onStarship,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  SearchSearchCopyForTesting operator <<(
          covariant SearchSearchCopyForTesting other) =>
      mergedLeftWith(other);

  factory SearchSearchCopyForTesting.fromJson(Map<String, dynamic> json) =>
      _$SearchSearchCopyForTestingFromJson(json).copyWith(
        onStarship:
            Search_StarshipInlineFragment.schemaTypeName == json['__typename']
                ? Search_StarshipInlineFragment.fromJson(json)
                : null,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchSearchCopyForTestingToJson(this);

    if (onStarship != null) {
      json.addAll(onStarship.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class SearchStarshipInlineFragment extends Starship {
  static final String schemaTypeName = "Starship";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'id', required: true, disallowNullValue: true)
  String get id => fields.id;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  SearchStarshipInlineFragment({
    this.typename,
    @required String id,
  }) : super(
          id: id,
        );

  SearchStarshipInlineFragment.fromObjectType(
    Starship objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  SearchStarshipInlineFragment.partial({
    this.typename,
    String id,
  }) : super(
          id: id,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (id == null) {
      missingFields.add("id");
    }
    return missingFields;
  }

  /// Creates a new [SearchStarshipInlineFragment] with the given non-null values overridden
  SearchStarshipInlineFragment copyWith({
    String typename,
    String id,
  }) =>
      SearchStarshipInlineFragment(
        typename: typename ?? this.typename,
        id: id ?? this.id,
      );

  /// Creates a new [SearchStarshipInlineFragment] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  SearchStarshipInlineFragment copyWithout({
    bool typename = false,
    bool id = false,
  }) =>
      SearchStarshipInlineFragment(
        typename: typename == false ? this.typename : null,
        id: id == false ? this.id : null,
      );

  /// Creates a new [SearchStarshipInlineFragment] with non-null values from [other] as attribute overrides
  SearchStarshipInlineFragment mergedLeftWith(
      covariant SearchStarshipInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      id: other.id,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  SearchStarshipInlineFragment operator <<(
          covariant SearchStarshipInlineFragment other) =>
      mergedLeftWith(other);

  factory SearchStarshipInlineFragment.fromJson(Map<String, dynamic> json) =>
      _$SearchStarshipInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchStarshipInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class SearchSearch extends SearchResult {
  static final String schemaTypeName = "SearchResult";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(ignore: true)
  final SearchStarshipInlineFragment onStarship;

  @override
  List<Object> get props => [
        ...super.props,
        onStarship,
      ];

  SearchSearch({
    this.typename,
    this.onStarship,
  }) : super();

  SearchSearch.fromObjectType(
    SearchResult objectType, {
    this.typename,
    this.onStarship,
  }) : super.fromFields(objectType.fields);

  SearchSearch.partial({
    this.typename,
    this.onStarship,
  }) : super();

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [SearchSearch] with the given non-null values overridden
  SearchSearch copyWith({
    String typename,
    SearchStarshipInlineFragment onStarship,
  }) =>
      SearchSearch(
        typename: typename ?? this.typename,
        onStarship: onStarship != null
            ? this.onStarship?.mergedLeftWith(onStarship) ?? onStarship
            : this.onStarship,
      );

  /// Creates a new [SearchSearch] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  SearchSearch copyWithout({
    bool typename = false,
    bool onStarship = false,
  }) =>
      SearchSearch(
        typename: typename == false ? this.typename : null,
        onStarship: onStarship == false ? this.onStarship : null,
      );

  /// Creates a new [SearchSearch] with non-null values from [other] as attribute overrides
  SearchSearch mergedLeftWith(covariant SearchSearch other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      onStarship: other.onStarship,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  SearchSearch operator <<(covariant SearchSearch other) =>
      mergedLeftWith(other);

  factory SearchSearch.fromJson(Map<String, dynamic> json) =>
      _$SearchSearchFromJson(json).copyWith(
        onStarship:
            SearchStarshipInlineFragment.schemaTypeName == json['__typename']
                ? SearchStarshipInlineFragment.fromJson(json)
                : null,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchSearchToJson(this);

    if (onStarship != null) {
      json.addAll(onStarship.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class SearchQuery extends Query {
  static final String schemaTypeName = "query";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'search', required: false, disallowNullValue: false)
  List<SearchSearch> get search => fields.search;
  @JsonKey(
      name: r'__searchCopyForTesting',
      required: false,
      disallowNullValue: false)
  final List<SearchSearchCopyForTesting> searchCopyForTesting;

  @override
  List<Object> get props => [
        ...super.props,
        searchCopyForTesting,
      ];

  SearchQuery({
    this.typename,
    List<SearchSearch> search,
    this.searchCopyForTesting,
  }) : super(
          search: search,
        );

  SearchQuery.fromObjectType(
    Query objectType, {
    this.typename,
    this.searchCopyForTesting,
  }) : super.fromFields(objectType.fields);

  SearchQuery.partial({
    this.typename,
    List<SearchSearch> search,
    this.searchCopyForTesting,
  }) : super(
          search: search,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [SearchQuery] with the given non-null values overridden
  SearchQuery copyWith({
    String typename,
    List<SearchSearch> search,
    List<SearchSearchCopyForTesting> searchCopyForTesting,
  }) =>
      SearchQuery(
        typename: typename ?? this.typename,
        search: search ?? this.search,
        searchCopyForTesting: searchCopyForTesting ?? this.searchCopyForTesting,
      );

  /// Creates a new [SearchQuery] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  SearchQuery copyWithout({
    bool typename = false,
    bool search = false,
    bool searchCopyForTesting = false,
  }) =>
      SearchQuery(
        typename: typename == false ? this.typename : null,
        search: search == false ? this.search : null,
        searchCopyForTesting:
            searchCopyForTesting == false ? this.searchCopyForTesting : null,
      );

  /// Creates a new [SearchQuery] with non-null values from [other] as attribute overrides
  SearchQuery mergedLeftWith(covariant SearchQuery other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      search: other.search,
      searchCopyForTesting: other.searchCopyForTesting,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  SearchQuery operator <<(covariant SearchQuery other) => mergedLeftWith(other);

  factory SearchQuery.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$SearchQueryToJson(this);

    return json;
  }
}
