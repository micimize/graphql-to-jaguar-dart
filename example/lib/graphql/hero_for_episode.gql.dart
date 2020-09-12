// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';
import 'package:starwars/graphql/_human_fragment.gql.dart';

export 'package:starwars/graphql/_human_fragment.gql.dart';

part 'hero_for_episode.gql.g.dart';

@JsonSerializable()
class HeroForEpisodeVariables {
  @JsonKey(required: true, disallowNullValue: true)
  final Episode ep;

  HeroForEpisodeVariables({
    @required this.ep,
  });

  factory HeroForEpisodeVariables.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeVariablesFromJson(json);

  Map<String, dynamic> toJson() => _$HeroForEpisodeVariablesToJson(this);
}

@JsonSerializable()
class HeroForEpisodeHumanInlineFragment extends Human with Info, Relationships {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'appearsIn', required: true, disallowNullValue: true)
  List<Episode> get appearsIn => fields.appearsIn;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  @override
  List<Object> get props => [
        ...super.props,
        planet,
      ];

  HeroForEpisodeHumanInlineFragment({
    this.typename,
    @required List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
    this.planet,
  }) : super(
          appearsIn: appearsIn,
          height: height,
          mass: mass,
          homePlanet: home,
          friends: friends,
          starships: starships,
        );

  HeroForEpisodeHumanInlineFragment.fromObjectType(
    Human objectType, {
    this.typename,
    this.planet,
  }) : super.fromFields(objectType.fields);

  HeroForEpisodeHumanInlineFragment.partial({
    this.typename,
    List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
    this.planet,
  }) : super(
          appearsIn: appearsIn,
          height: height,
          mass: mass,
          homePlanet: home,
          friends: friends,
          starships: starships,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  /// Creates a new [HeroForEpisodeHumanInlineFragment] with the given non-null values overridden
  HeroForEpisodeHumanInlineFragment copyWith({
    String typename,
    List<Episode> appearsIn,
    double height,
    double mass,
    String home,
    String planet,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) =>
      HeroForEpisodeHumanInlineFragment(
        typename: typename ?? this.typename,
        appearsIn: appearsIn ?? this.appearsIn,
        height: height ?? this.height,
        mass: mass ?? this.mass,
        home: home ?? this.home,
        planet: planet ?? this.planet,
        friends: friends ?? this.friends,
        starships: starships ?? this.starships,
      );

  /// Creates a new [HeroForEpisodeHumanInlineFragment] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  HeroForEpisodeHumanInlineFragment copyWithout({
    bool typename = false,
    bool appearsIn = false,
    bool height = false,
    bool mass = false,
    bool home = false,
    bool planet = false,
    bool friends = false,
    bool starships = false,
  }) =>
      HeroForEpisodeHumanInlineFragment(
        typename: typename == false ? this.typename : null,
        appearsIn: appearsIn == false ? this.appearsIn : null,
        height: height == false ? this.height : null,
        mass: mass == false ? this.mass : null,
        home: home == false ? this.home : null,
        planet: planet == false ? this.planet : null,
        friends: friends == false ? this.friends : null,
        starships: starships == false ? this.starships : null,
      );

  /// Creates a new [HeroForEpisodeHumanInlineFragment] with non-null values from [other] as attribute overrides
  HeroForEpisodeHumanInlineFragment mergedLeftWith(
      covariant HeroForEpisodeHumanInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      appearsIn: other.appearsIn,
      height: other.height,
      mass: other.mass,
      home: other.home,
      planet: other.planet,
      friends: other.friends,
      starships: other.starships,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  HeroForEpisodeHumanInlineFragment operator <<(
          covariant HeroForEpisodeHumanInlineFragment other) =>
      mergedLeftWith(other);

  factory HeroForEpisodeHumanInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      _$HeroForEpisodeHumanInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeHumanInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeDroidInlineFragment extends Droid {
  static final String schemaTypeName = "Droid";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'primaryFunction', required: false, disallowNullValue: false)
  String get primaryFunction => fields.primaryFunction;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  HeroForEpisodeDroidInlineFragment({
    this.typename,
    String primaryFunction,
  }) : super(
          primaryFunction: primaryFunction,
        );

  HeroForEpisodeDroidInlineFragment.fromObjectType(
    Droid objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  HeroForEpisodeDroidInlineFragment.partial({
    this.typename,
    String primaryFunction,
  }) : super(
          primaryFunction: primaryFunction,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [HeroForEpisodeDroidInlineFragment] with the given non-null values overridden
  HeroForEpisodeDroidInlineFragment copyWith({
    String typename,
    String primaryFunction,
  }) =>
      HeroForEpisodeDroidInlineFragment(
        typename: typename ?? this.typename,
        primaryFunction: primaryFunction ?? this.primaryFunction,
      );

  /// Creates a new [HeroForEpisodeDroidInlineFragment] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  HeroForEpisodeDroidInlineFragment copyWithout({
    bool typename = false,
    bool primaryFunction = false,
  }) =>
      HeroForEpisodeDroidInlineFragment(
        typename: typename == false ? this.typename : null,
        primaryFunction: primaryFunction == false ? this.primaryFunction : null,
      );

  /// Creates a new [HeroForEpisodeDroidInlineFragment] with non-null values from [other] as attribute overrides
  HeroForEpisodeDroidInlineFragment mergedLeftWith(
      covariant HeroForEpisodeDroidInlineFragment other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      primaryFunction: other.primaryFunction,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  HeroForEpisodeDroidInlineFragment operator <<(
          covariant HeroForEpisodeDroidInlineFragment other) =>
      mergedLeftWith(other);

  factory HeroForEpisodeDroidInlineFragment.fromJson(
          Map<String, dynamic> json) =>
      _$HeroForEpisodeDroidInlineFragmentFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeDroidInlineFragmentToJson(this);

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeHero extends Character with HelloMixin {
  static final String schemaTypeName = "Character";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;

  @JsonKey(ignore: true)
  final HeroForEpisodeDroidInlineFragment onDroid;
  @JsonKey(ignore: true)
  final HeroForEpisodeHumanInlineFragment onHuman;

  @override
  List<Object> get props => [
        ...super.props,
        onDroid,
        onHuman,
      ];

  HeroForEpisodeHero({
    this.typename,
    this.onDroid,
    this.onHuman,
    @required String name,
  }) : super(
          name: name,
        );

  HeroForEpisodeHero.fromObjectType(
    Character objectType, {
    this.typename,
    this.onDroid,
    this.onHuman,
  }) : super.fromFields(objectType.fields);

  HeroForEpisodeHero.partial({
    this.typename,
    this.onDroid,
    this.onHuman,
    String name,
  }) : super(
          name: name,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new [HeroForEpisodeHero] with the given non-null values overridden
  HeroForEpisodeHero copyWith({
    String typename,
    HeroForEpisodeDroidInlineFragment onDroid,
    HeroForEpisodeHumanInlineFragment onHuman,
    String name,
  }) =>
      HeroForEpisodeHero(
        typename: typename ?? this.typename,
        onDroid: onDroid != null
            ? this.onDroid?.mergedLeftWith(onDroid) ?? onDroid
            : this.onDroid,
        onHuman: onHuman != null
            ? this.onHuman?.mergedLeftWith(onHuman) ?? onHuman
            : this.onHuman,
        name: name ?? this.name,
      );

  /// Creates a new [HeroForEpisodeHero] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  HeroForEpisodeHero copyWithout({
    bool typename = false,
    bool onDroid = false,
    bool onHuman = false,
    bool name = false,
  }) =>
      HeroForEpisodeHero(
        typename: typename == false ? this.typename : null,
        onDroid: onDroid == false ? this.onDroid : null,
        onHuman: onHuman == false ? this.onHuman : null,
        name: name == false ? this.name : null,
      );

  /// Creates a new [HeroForEpisodeHero] with non-null values from [other] as attribute overrides
  HeroForEpisodeHero mergedLeftWith(covariant HeroForEpisodeHero other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      onDroid: other.onDroid,
      onHuman: other.onHuman,
      name: other.name,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  HeroForEpisodeHero operator <<(covariant HeroForEpisodeHero other) =>
      mergedLeftWith(other);

  factory HeroForEpisodeHero.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeHeroFromJson(json).copyWith(
        onDroid: HeroForEpisodeDroidInlineFragment.schemaTypeName ==
                json['__typename']
            ? HeroForEpisodeDroidInlineFragment.fromJson(json)
            : null,
        onHuman: HeroForEpisodeHumanInlineFragment.schemaTypeName ==
                json['__typename']
            ? HeroForEpisodeHumanInlineFragment.fromJson(json)
            : null,
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeHeroToJson(this);

    if (onDroid != null) {
      json.addAll(onDroid.toJson());
    }
    if (onHuman != null) {
      json.addAll(onHuman.toJson());
    }

    return json;
  }
}

@JsonSerializable()
class HeroForEpisodeQuery extends Query {
  static final String schemaTypeName = "query";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'hero', required: false, disallowNullValue: false)
  HeroForEpisodeHero get hero => fields.hero;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  HeroForEpisodeQuery({
    this.typename,
    HeroForEpisodeHero hero,
  }) : super(
          hero: hero,
        );

  HeroForEpisodeQuery.fromObjectType(
    Query objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  HeroForEpisodeQuery.partial({
    this.typename,
    HeroForEpisodeHero hero,
  }) : super(
          hero: hero,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [HeroForEpisodeQuery] with the given non-null values overridden
  HeroForEpisodeQuery copyWith({
    String typename,
    HeroForEpisodeHero hero,
  }) =>
      HeroForEpisodeQuery(
        typename: typename ?? this.typename,
        hero: hero ?? this.hero,
      );

  /// Creates a new [HeroForEpisodeQuery] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  HeroForEpisodeQuery copyWithout({
    bool typename = false,
    bool hero = false,
  }) =>
      HeroForEpisodeQuery(
        typename: typename == false ? this.typename : null,
        hero: hero == false ? this.hero : null,
      );

  /// Creates a new [HeroForEpisodeQuery] with non-null values from [other] as attribute overrides
  HeroForEpisodeQuery mergedLeftWith(covariant HeroForEpisodeQuery other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      hero: other.hero,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  HeroForEpisodeQuery operator <<(covariant HeroForEpisodeQuery other) =>
      mergedLeftWith(other);

  factory HeroForEpisodeQuery.fromJson(Map<String, dynamic> json) =>
      _$HeroForEpisodeQueryFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HeroForEpisodeQueryToJson(this);

    return json;
  }
}
