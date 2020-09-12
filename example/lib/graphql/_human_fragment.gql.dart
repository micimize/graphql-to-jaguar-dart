// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:starwars/graphql/schema.dart';

part '_human_fragment.gql.g.dart';

///
/// See [HomeSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Home on Human {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  String get planet;

  static HomeSelectionSet fromJson(Map<String, dynamic> json) =>
      HomeSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Home]
///
/// Gives access to all the usual selection set helpers

@JsonSerializable()
class HomeSelectionSet extends Human with Home {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  @override
  List<Object> get props => [
        ...super.props,
        planet,
      ];

  HomeSelectionSet({
    this.typename,
    String home,
    this.planet,
  }) : super(
          homePlanet: home,
        );

  HomeSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
    this.planet,
  }) : super.fromFields(objectType.fields);

  HomeSelectionSet.partial({
    this.typename,
    String home,
    this.planet,
  }) : super(
          homePlanet: home,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [HomeSelectionSet] with the given non-null values overridden
  HomeSelectionSet copyWith({
    String typename,
    String home,
    String planet,
  }) =>
      HomeSelectionSet(
        typename: typename ?? this.typename,
        home: home ?? this.home,
        planet: planet ?? this.planet,
      );

  /// Creates a new [HomeSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  HomeSelectionSet copyWithout({
    bool typename = false,
    bool home = false,
    bool planet = false,
  }) =>
      HomeSelectionSet(
        typename: typename == false ? this.typename : null,
        home: home == false ? this.home : null,
        planet: planet == false ? this.planet : null,
      );

  /// Creates a new [HomeSelectionSet] with non-null values from [other] as attribute overrides
  HomeSelectionSet mergedLeftWith(covariant Home other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      home: other.home,
      planet: other.planet,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  HomeSelectionSet operator <<(covariant Home other) => mergedLeftWith(other);

  factory HomeSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$HomeSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$HomeSelectionSetToJson(this);

    return json;
  }

  /// Construct a [HomeSelectionSet] from a [Home]
  factory HomeSelectionSet.from(Home source) {
    assert(source != null, "Cannot construct HomeSelectionSet from null");
    return HomeSelectionSet(
      typename: source.typename,
      home: source.home,
      planet: source.planet,
    );
  }
}

///
/// See [DimensionsSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Dimensions on Human {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;

  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;

  static DimensionsSelectionSet fromJson(Map<String, dynamic> json) =>
      DimensionsSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Dimensions]
///
/// Gives access to all the usual selection set helpers

@JsonSerializable()
class DimensionsSelectionSet extends Human with Dimensions {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  DimensionsSelectionSet({
    this.typename,
    double height,
    double mass,
  }) : super(
          height: height,
          mass: mass,
        );

  DimensionsSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  DimensionsSelectionSet.partial({
    this.typename,
    double height,
    double mass,
  }) : super(
          height: height,
          mass: mass,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [DimensionsSelectionSet] with the given non-null values overridden
  DimensionsSelectionSet copyWith({
    String typename,
    double height,
    double mass,
  }) =>
      DimensionsSelectionSet(
        typename: typename ?? this.typename,
        height: height ?? this.height,
        mass: mass ?? this.mass,
      );

  /// Creates a new [DimensionsSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  DimensionsSelectionSet copyWithout({
    bool typename = false,
    bool height = false,
    bool mass = false,
  }) =>
      DimensionsSelectionSet(
        typename: typename == false ? this.typename : null,
        height: height == false ? this.height : null,
        mass: mass == false ? this.mass : null,
      );

  /// Creates a new [DimensionsSelectionSet] with non-null values from [other] as attribute overrides
  DimensionsSelectionSet mergedLeftWith(covariant Dimensions other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      height: other.height,
      mass: other.mass,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  DimensionsSelectionSet operator <<(covariant Dimensions other) =>
      mergedLeftWith(other);

  factory DimensionsSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$DimensionsSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$DimensionsSelectionSetToJson(this);

    return json;
  }

  /// Construct a [DimensionsSelectionSet] from a [Dimensions]
  factory DimensionsSelectionSet.from(Dimensions source) {
    assert(source != null, "Cannot construct DimensionsSelectionSet from null");
    return DimensionsSelectionSet(
      typename: source.typename,
      height: source.height,
      mass: source.mass,
    );
  }
}

@JsonSerializable()
class RelationshipsStarships extends Starship with HelloMixin {
  static final String schemaTypeName = "Starship";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'name', required: true, disallowNullValue: true)
  String get name => fields.name;

  @JsonKey(name: r'length', required: false, disallowNullValue: false)
  double get length => fields.length;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  RelationshipsStarships({
    this.typename,
    @required String name,
    double length,
  }) : super(
          name: name,
          length: length,
        );

  RelationshipsStarships.fromObjectType(
    Starship objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  RelationshipsStarships.partial({
    this.typename,
    String name,
    double length,
  }) : super(
          name: name,
          length: length,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  /// Creates a new [RelationshipsStarships] with the given non-null values overridden
  RelationshipsStarships copyWith({
    String typename,
    String name,
    double length,
  }) =>
      RelationshipsStarships(
        typename: typename ?? this.typename,
        name: name ?? this.name,
        length: length ?? this.length,
      );

  /// Creates a new [RelationshipsStarships] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  RelationshipsStarships copyWithout({
    bool typename = false,
    bool name = false,
    bool length = false,
  }) =>
      RelationshipsStarships(
        typename: typename == false ? this.typename : null,
        name: name == false ? this.name : null,
        length: length == false ? this.length : null,
      );

  /// Creates a new [RelationshipsStarships] with non-null values from [other] as attribute overrides
  RelationshipsStarships mergedLeftWith(
      covariant RelationshipsStarships other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      name: other.name,
      length: other.length,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  RelationshipsStarships operator <<(covariant RelationshipsStarships other) =>
      mergedLeftWith(other);

  factory RelationshipsStarships.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsStarshipsFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsStarshipsToJson(this);

    return json;
  }
}

@JsonSerializable()
class RelationshipsFriends extends Character with HelloMixin {
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

  @override
  List<Object> get props => [
        ...super.props,
      ];

  RelationshipsFriends({
    this.typename,
    @required String name,
  }) : super(
          name: name,
        );

  RelationshipsFriends.fromObjectType(
    Character objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  RelationshipsFriends.partial({
    this.typename,
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

  /// Creates a new [RelationshipsFriends] with the given non-null values overridden
  RelationshipsFriends copyWith({
    String typename,
    String name,
  }) =>
      RelationshipsFriends(
        typename: typename ?? this.typename,
        name: name ?? this.name,
      );

  /// Creates a new [RelationshipsFriends] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  RelationshipsFriends copyWithout({
    bool typename = false,
    bool name = false,
  }) =>
      RelationshipsFriends(
        typename: typename == false ? this.typename : null,
        name: name == false ? this.name : null,
      );

  /// Creates a new [RelationshipsFriends] with non-null values from [other] as attribute overrides
  RelationshipsFriends mergedLeftWith(covariant RelationshipsFriends other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      name: other.name,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  RelationshipsFriends operator <<(covariant RelationshipsFriends other) =>
      mergedLeftWith(other);

  factory RelationshipsFriends.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsFriendsFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsFriendsToJson(this);

    return json;
  }
}

///
/// See [RelationshipsSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Relationships on Human {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'friends', required: false, disallowNullValue: false)
  List<RelationshipsFriends> get friends => fields.friends;

  @JsonKey(name: r'starships', required: false, disallowNullValue: false)
  List<RelationshipsStarships> get starships => fields.starships;

  static RelationshipsSelectionSet fromJson(Map<String, dynamic> json) =>
      RelationshipsSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Relationships]
///
/// Gives access to all the usual selection set helpers

@JsonSerializable()
class RelationshipsSelectionSet extends Human with Relationships {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @override
  List<Object> get props => [
        ...super.props,
      ];

  RelationshipsSelectionSet({
    this.typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          friends: friends,
          starships: starships,
        );

  RelationshipsSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
  }) : super.fromFields(objectType.fields);

  RelationshipsSelectionSet.partial({
    this.typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) : super(
          friends: friends,
          starships: starships,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [RelationshipsSelectionSet] with the given non-null values overridden
  RelationshipsSelectionSet copyWith({
    String typename,
    List<RelationshipsFriends> friends,
    List<RelationshipsStarships> starships,
  }) =>
      RelationshipsSelectionSet(
        typename: typename ?? this.typename,
        friends: friends ?? this.friends,
        starships: starships ?? this.starships,
      );

  /// Creates a new [RelationshipsSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  RelationshipsSelectionSet copyWithout({
    bool typename = false,
    bool friends = false,
    bool starships = false,
  }) =>
      RelationshipsSelectionSet(
        typename: typename == false ? this.typename : null,
        friends: friends == false ? this.friends : null,
        starships: starships == false ? this.starships : null,
      );

  /// Creates a new [RelationshipsSelectionSet] with non-null values from [other] as attribute overrides
  RelationshipsSelectionSet mergedLeftWith(covariant Relationships other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      friends: other.friends,
      starships: other.starships,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  RelationshipsSelectionSet operator <<(covariant Relationships other) =>
      mergedLeftWith(other);

  factory RelationshipsSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$RelationshipsSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$RelationshipsSelectionSetToJson(this);

    return json;
  }

  /// Construct a [RelationshipsSelectionSet] from a [Relationships]
  factory RelationshipsSelectionSet.from(Relationships source) {
    assert(
        source != null, "Cannot construct RelationshipsSelectionSet from null");
    return RelationshipsSelectionSet(
      typename: source.typename,
      friends: source.friends,
      starships: source.starships,
    );
  }
}

///
/// See [InfoSelectionSet] for the full stand-alone class
@JsonSerializable(createFactory: false)
mixin Info on Human implements Dimensions, Home {
  static final String schemaTypeName = "Human";

  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  String get typename;

  @JsonKey(name: r'height', required: false, disallowNullValue: false)
  double get height => fields.height;

  @JsonKey(name: r'mass', required: false, disallowNullValue: false)
  double get mass => fields.mass;

  @JsonKey(name: r'home', required: false, disallowNullValue: false)
  String get home => fields.homePlanet;
  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  String get planet;

  static InfoSelectionSet fromJson(Map<String, dynamic> json) =>
      InfoSelectionSet.fromJson(json);
}

/// Materialized class that implements the fragment [Info]
///
/// Gives access to all the usual selection set helpers

@JsonSerializable()
class InfoSelectionSet extends Human with Info {
  static final String schemaTypeName = "Human";

  /// The `__typename` meta-field
  ///
  /// GraphQL supports type name introspection at any point within a query by the meta-field `__typename: String!` ([spec])
  ///
  /// [spec]: https://github.com/graphql/graphql-spec/blob/c7bface58bf6f58cc809f279cba1b6245de914b4/spec/Section%204%20--%20Introspection.md#type-name-introspection)
  @JsonKey(name: r'__typename', required: false, disallowNullValue: true)
  final String typename;

  @JsonKey(name: r'planet', required: false, disallowNullValue: false)
  final String planet;

  @override
  List<Object> get props => [
        ...super.props,
        planet,
      ];

  InfoSelectionSet({
    this.typename,
    double height,
    double mass,
    String home,
    this.planet,
  }) : super(
          height: height,
          mass: mass,
          homePlanet: home,
        );

  InfoSelectionSet.fromObjectType(
    Human objectType, {
    this.typename,
    this.planet,
  }) : super.fromFields(objectType.fields);

  InfoSelectionSet.partial({
    this.typename,
    double height,
    double mass,
    String home,
    this.planet,
  }) : super(
          height: height,
          mass: mass,
          homePlanet: home,
        );

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  /// Creates a new [InfoSelectionSet] with the given non-null values overridden
  InfoSelectionSet copyWith({
    String typename,
    double height,
    double mass,
    String home,
    String planet,
  }) =>
      InfoSelectionSet(
        typename: typename ?? this.typename,
        height: height ?? this.height,
        mass: mass ?? this.mass,
        home: home ?? this.home,
        planet: planet ?? this.planet,
      );

  /// Creates a new [InfoSelectionSet] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  InfoSelectionSet copyWithout({
    bool typename = false,
    bool height = false,
    bool mass = false,
    bool home = false,
    bool planet = false,
  }) =>
      InfoSelectionSet(
        typename: typename == false ? this.typename : null,
        height: height == false ? this.height : null,
        mass: mass == false ? this.mass : null,
        home: home == false ? this.home : null,
        planet: planet == false ? this.planet : null,
      );

  /// Creates a new [InfoSelectionSet] with non-null values from [other] as attribute overrides
  InfoSelectionSet mergedLeftWith(covariant Info other) {
    assert(other != null, "$this Cannot be merged with null");
    return copyWith(
      typename: other.typename,
      height: other.height,
      mass: other.mass,
      home: other.home,
      planet: other.planet,
    );
  }

  /// Alias for [mergedLeftWith]
  @override
  InfoSelectionSet operator <<(covariant Info other) => mergedLeftWith(other);

  factory InfoSelectionSet.fromJson(Map<String, dynamic> json) =>
      _$InfoSelectionSetFromJson(json);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = _$InfoSelectionSetToJson(this);

    return json;
  }

  /// Construct a [InfoSelectionSet] from a [Info]
  factory InfoSelectionSet.from(Info source) {
    assert(source != null, "Cannot construct InfoSelectionSet from null");
    return InfoSelectionSet(
      typename: source.typename,
      height: source.height,
      mass: source.mass,
      home: source.home,
      planet: source.planet,
    );
  }
}
