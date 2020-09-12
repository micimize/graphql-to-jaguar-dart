// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

export './example_mixin.dart';

part 'schema.g.dart';

/* Enums */
/// The episodes in the Star Wars trilogy
enum Episode {
  NEWHOPE,
  EMPIRE,
  JEDI,
}

/// Units of height
enum LengthUnit {
  METER,
  FOOT,
}

// unions in dart seem ugly by necessity atm
@immutable
class SearchResult extends Equatable {
  // just to make fromObjectType work with unions
  @protected
  SearchResult get fields => this;
  @protected
  SearchResult.fromFields(SearchResult other)
      : onHuman = other.onHuman,
        onDroid = other.onDroid,
        onStarship = other.onStarship;

  static const possibleTypes = const {Human, Droid, Starship};

  final Human onHuman;
  final Droid onDroid;
  final Starship onStarship;

  const SearchResult({
    this.onHuman,
    this.onDroid,
    this.onStarship,
  });

  /// The wrapped value. Will be one of the `possibleTypes`
  Object get value => onHuman ?? onDroid ?? onStarship;

  @override
  List<Object> get props => [value];

  /// Creates a new [SearchResult] with `value.mergedLeftWith(other.value)`
  ///
  /// If [other].value is not the same type, [other] is returned.
  SearchResult mergedLeftWith(covariant SearchResult other) {
    assert(other?.value != null,
        "$this Cannot be merged with null value from $other");
    if (onHuman != null && other.onHuman != null) {
      return SearchResult(onHuman: onHuman.mergedLeftWith(other.onHuman));
    }
    if (onDroid != null && other.onDroid != null) {
      return SearchResult(onDroid: onDroid.mergedLeftWith(other.onDroid));
    }
    if (onStarship != null && other.onStarship != null) {
      return SearchResult(
          onStarship: onStarship.mergedLeftWith(other.onStarship));
    }
    // merging cannot be done
    return other;
  }

  /// Alias for [mergedLeftWith]
  SearchResult operator <<(covariant SearchResult other) =>
      mergedLeftWith(other);
}

/* Input Types */

/// The input object sent when someone is creating a new review
@JsonSerializable()
@immutable
class ReviewInput extends Equatable {
  static final String schemaTypeName = "ReviewInput";

  /// 0-5 stars
  @JsonKey(required: true, disallowNullValue: true)
  final int stars;

  /// Comment about the movie, optional
  @JsonKey(required: false, disallowNullValue: false)
  final String commentary;

  /// Favorite color, optional
  @JsonKey(required: false, disallowNullValue: false)
  final ColorInput favoriteColor;

  ReviewInput({
    @required this.stars,
    this.commentary,
    this.favoriteColor,
  });

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (stars == null) {
      missingFields.add("stars");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;

  @override
  List<Object> get props => [
        stars,
        commentary,
        favoriteColor,
      ];

  /// Creates a new [ReviewInput] with the given non-null values overridden
  ReviewInput copyWith({
    int stars,
    String commentary,
    ColorInput favoriteColor,
  }) =>
      ReviewInput(
        stars: stars ?? this.stars,
        commentary: commentary ?? this.commentary,
        favoriteColor: favoriteColor ?? this.favoriteColor,
      );

  /// Creates a new [] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  ReviewInput copyWithout({
    bool stars = false,
    bool commentary = false,
    bool favoriteColor = false,
  }) =>
      ReviewInput(
        stars: stars == false ? this.stars : null,
        commentary: commentary == false ? this.commentary : null,
        favoriteColor: favoriteColor == false ? this.favoriteColor : null,
      );

  /// Creates a new [ReviewInput] with non-null values from [other] as attribute overrides
  ReviewInput mergedLeftWith(covariant ReviewInput other) {
    assert(other != null, "$this Cannot be merged with null");
    return ReviewInput(
      stars: other.stars ?? stars,
      commentary: other.commentary ?? commentary,
      favoriteColor: other.favoriteColor ?? favoriteColor,
    );
  }

  /// Alias for [mergedLeftWith]
  ReviewInput operator <<(covariant ReviewInput other) => mergedLeftWith(other);

  factory ReviewInput.fromJson(Map<String, dynamic> json) =>
      _$ReviewInputFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewInputToJson(this);
}

/// The input object sent when passing in a color
@JsonSerializable()
@immutable
class ColorInput extends Equatable {
  static final String schemaTypeName = "ColorInput";

  @JsonKey(required: true, disallowNullValue: true)
  final int red;
  @JsonKey(required: true, disallowNullValue: true)
  final int green;
  @JsonKey(required: true, disallowNullValue: true)
  final int blue;

  ColorInput({
    @required this.red,
    @required this.green,
    @required this.blue,
  });

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (red == null) {
      missingFields.add("red");
    }
    if (green == null) {
      missingFields.add("green");
    }
    if (blue == null) {
      missingFields.add("blue");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;

  @override
  List<Object> get props => [
        red,
        green,
        blue,
      ];

  /// Creates a new [ColorInput] with the given non-null values overridden
  ColorInput copyWith({
    int red,
    int green,
    int blue,
  }) =>
      ColorInput(
        red: red ?? this.red,
        green: green ?? this.green,
        blue: blue ?? this.blue,
      );

  /// Creates a new [] with the specified fields nullified
  ///
  /// All fields default to `false`, so `field: null` or `field: true` nullifies a field.
  ColorInput copyWithout({
    bool red = false,
    bool green = false,
    bool blue = false,
  }) =>
      ColorInput(
        red: red == false ? this.red : null,
        green: green == false ? this.green : null,
        blue: blue == false ? this.blue : null,
      );

  /// Creates a new [ColorInput] with non-null values from [other] as attribute overrides
  ColorInput mergedLeftWith(covariant ColorInput other) {
    assert(other != null, "$this Cannot be merged with null");
    return ColorInput(
      red: other.red ?? red,
      green: other.green ?? green,
      blue: other.blue ?? blue,
    );
  }

  /// Alias for [mergedLeftWith]
  ColorInput operator <<(covariant ColorInput other) => mergedLeftWith(other);

  factory ColorInput.fromJson(Map<String, dynamic> json) =>
      _$ColorInputFromJson(json);

  Map<String, dynamic> toJson() => _$ColorInputToJson(this);
}

/* Interfaces */

/// A character from the Star Wars universe
@immutable
class _CharacterFields extends Equatable {
  /// The ID of the character
  final String id;

  /// The name of the character
  final String name;

  /// The friends of the character, or an empty list if they have none
  final List<Character> friends;

  /// The friends of the character exposed as a connection with edges
  final FriendsConnection friendsConnection;

  /// The movies this character appears in
  final List<Episode> appearsIn;

  const _CharacterFields({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
  });

  @override
  List<Object> get props => [
        id,
        name,
        friends,
        friendsConnection,
        appearsIn,
      ];

  /// Creates a new [_CharacterFields] with non-null values from [other] as attribute overrides
  _CharacterFields mergedLeftWith(covariant _CharacterFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _CharacterFields(
      id: other.id ?? id,
      name: other.name ?? name,
      friends: other.friends ?? friends,
      friendsConnection: other.friendsConnection ?? friendsConnection,
      appearsIn: other.appearsIn ?? appearsIn,
    );
  }
}

/// A character from the Star Wars universe
@immutable
class Character extends Equatable {
  static final String schemaTypeName = "Character";

  @protected
  final _CharacterFields fields;

  @protected
  const Character.fromFields(this.fields);

  Character({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
  }) : fields = _CharacterFields(
          id: id,
          name: name,
          friends: friends,
          friendsConnection: friendsConnection,
          appearsIn: appearsIn,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Character] with non-null values from [other] as attribute overrides
  Character mergedLeftWith(covariant Character other) =>
      Character.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Character operator <<(covariant Character other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    if (fields.friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (fields.appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/* Types */

/// The query type, represents all of the entry points into our object graph
@immutable
class _QueryFields extends Equatable {
  final Character hero;
  final List<Review> reviews;
  final List<SearchResult> search;
  final Character character;
  final Droid droid;
  final Human human;
  final Starship starship;

  const _QueryFields({
    this.hero,
    this.reviews,
    this.search,
    this.character,
    this.droid,
    this.human,
    this.starship,
  });

  @override
  List<Object> get props => [
        hero,
        reviews,
        search,
        character,
        droid,
        human,
        starship,
      ];

  /// Creates a new [_QueryFields] with non-null values from [other] as attribute overrides
  _QueryFields mergedLeftWith(covariant _QueryFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _QueryFields(
      hero: other.hero ?? hero,
      reviews: other.reviews ?? reviews,
      search: other.search ?? search,
      character: other.character ?? character,
      droid: other.droid ?? droid,
      human: other.human ?? human,
      starship: other.starship ?? starship,
    );
  }
}

/// The query type, represents all of the entry points into our object graph
@immutable
class Query extends Equatable {
  static final String schemaTypeName = "Query";

  @protected
  final _QueryFields fields;

  @protected
  const Query.fromFields(this.fields);

  Query({
    Character hero,
    List<Review> reviews,
    List<SearchResult> search,
    Character character,
    Droid droid,
    Human human,
    Starship starship,
  }) : fields = _QueryFields(
          hero: hero,
          reviews: reviews,
          search: search,
          character: character,
          droid: droid,
          human: human,
          starship: starship,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Query] with non-null values from [other] as attribute overrides
  Query mergedLeftWith(covariant Query other) =>
      Query.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Query operator <<(covariant Query other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// A connection object for a character's friends
@immutable
class _FriendsConnectionFields extends Equatable {
  /// The total number of friends
  final int totalCount;

  /// The edges for each of the character's friends.
  final List<FriendsEdge> edges;

  /// A list of the friends, as a convenience when edges are not needed.
  final List<Character> friends;

  /// Information for paginating this connection
  final PageInfo pageInfo;

  const _FriendsConnectionFields({
    this.totalCount,
    this.edges,
    this.friends,
    this.pageInfo,
  });

  @override
  List<Object> get props => [
        totalCount,
        edges,
        friends,
        pageInfo,
      ];

  /// Creates a new [_FriendsConnectionFields] with non-null values from [other] as attribute overrides
  _FriendsConnectionFields mergedLeftWith(
      covariant _FriendsConnectionFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _FriendsConnectionFields(
      totalCount: other.totalCount ?? totalCount,
      edges: other.edges ?? edges,
      friends: other.friends ?? friends,
      pageInfo: other.pageInfo ?? pageInfo,
    );
  }
}

/// A connection object for a character's friends
@immutable
class FriendsConnection extends Equatable {
  static final String schemaTypeName = "FriendsConnection";

  @protected
  final _FriendsConnectionFields fields;

  @protected
  const FriendsConnection.fromFields(this.fields);

  FriendsConnection({
    int totalCount,
    List<FriendsEdge> edges,
    List<Character> friends,
    PageInfo pageInfo,
  }) : fields = _FriendsConnectionFields(
          totalCount: totalCount,
          edges: edges,
          friends: friends,
          pageInfo: pageInfo,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [FriendsConnection] with non-null values from [other] as attribute overrides
  FriendsConnection mergedLeftWith(covariant FriendsConnection other) =>
      FriendsConnection.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  FriendsConnection operator <<(covariant FriendsConnection other) =>
      mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.pageInfo == null) {
      missingFields.add("pageInfo");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// An edge object for a character's friends
@immutable
class _FriendsEdgeFields extends Equatable {
  /// A cursor used for pagination
  final String cursor;

  /// The character represented by this friendship edge
  final Character node;

  const _FriendsEdgeFields({
    this.cursor,
    this.node,
  });

  @override
  List<Object> get props => [
        cursor,
        node,
      ];

  /// Creates a new [_FriendsEdgeFields] with non-null values from [other] as attribute overrides
  _FriendsEdgeFields mergedLeftWith(covariant _FriendsEdgeFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _FriendsEdgeFields(
      cursor: other.cursor ?? cursor,
      node: other.node ?? node,
    );
  }
}

/// An edge object for a character's friends
@immutable
class FriendsEdge extends Equatable {
  static final String schemaTypeName = "FriendsEdge";

  @protected
  final _FriendsEdgeFields fields;

  @protected
  const FriendsEdge.fromFields(this.fields);

  FriendsEdge({
    String cursor,
    Character node,
  }) : fields = _FriendsEdgeFields(
          cursor: cursor,
          node: node,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [FriendsEdge] with non-null values from [other] as attribute overrides
  FriendsEdge mergedLeftWith(covariant FriendsEdge other) =>
      FriendsEdge.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  FriendsEdge operator <<(covariant FriendsEdge other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.cursor == null) {
      missingFields.add("cursor");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// Information for paginating this connection
@immutable
class _PageInfoFields extends Equatable {
  final String startCursor;
  final String endCursor;
  final bool hasNextPage;

  const _PageInfoFields({
    this.startCursor,
    this.endCursor,
    this.hasNextPage,
  });

  @override
  List<Object> get props => [
        startCursor,
        endCursor,
        hasNextPage,
      ];

  /// Creates a new [_PageInfoFields] with non-null values from [other] as attribute overrides
  _PageInfoFields mergedLeftWith(covariant _PageInfoFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _PageInfoFields(
      startCursor: other.startCursor ?? startCursor,
      endCursor: other.endCursor ?? endCursor,
      hasNextPage: other.hasNextPage ?? hasNextPage,
    );
  }
}

/// Information for paginating this connection
@immutable
class PageInfo extends Equatable {
  static final String schemaTypeName = "PageInfo";

  @protected
  final _PageInfoFields fields;

  @protected
  const PageInfo.fromFields(this.fields);

  PageInfo({
    String startCursor,
    String endCursor,
    bool hasNextPage,
  }) : fields = _PageInfoFields(
          startCursor: startCursor,
          endCursor: endCursor,
          hasNextPage: hasNextPage,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [PageInfo] with non-null values from [other] as attribute overrides
  PageInfo mergedLeftWith(covariant PageInfo other) =>
      PageInfo.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  PageInfo operator <<(covariant PageInfo other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.hasNextPage == null) {
      missingFields.add("hasNextPage");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// Represents a review for a movie
@immutable
class _ReviewFields extends Equatable {
  /// The movie
  final Episode episode;

  /// The number of stars this review gave, 1-5
  final int stars;

  /// Comment about the movie
  final String commentary;

  const _ReviewFields({
    this.episode,
    this.stars,
    this.commentary,
  });

  @override
  List<Object> get props => [
        episode,
        stars,
        commentary,
      ];

  /// Creates a new [_ReviewFields] with non-null values from [other] as attribute overrides
  _ReviewFields mergedLeftWith(covariant _ReviewFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _ReviewFields(
      episode: other.episode ?? episode,
      stars: other.stars ?? stars,
      commentary: other.commentary ?? commentary,
    );
  }
}

/// Represents a review for a movie
@immutable
class Review extends Equatable {
  static final String schemaTypeName = "Review";

  @protected
  final _ReviewFields fields;

  @protected
  const Review.fromFields(this.fields);

  Review({
    Episode episode,
    int stars,
    String commentary,
  }) : fields = _ReviewFields(
          episode: episode,
          stars: stars,
          commentary: commentary,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Review] with non-null values from [other] as attribute overrides
  Review mergedLeftWith(covariant Review other) =>
      Review.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Review operator <<(covariant Review other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.stars == null) {
      missingFields.add("stars");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// A humanoid creature from the Star Wars universe
@immutable
class _HumanFields extends Equatable implements _CharacterFields {
  /// The ID of the human
  final String id;

  /// What this human calls themselves
  final String name;

  /// The home planet of the human, or null if unknown
  final String homePlanet;

  /// Height in the preferred unit, default is meters
  final double height;

  /// Mass in kilograms, or null if unknown
  final double mass;

  /// This human's friends, or an empty list if they have none
  final List<Character> friends;

  /// The friends of the human exposed as a connection with edges
  final FriendsConnection friendsConnection;

  /// The movies this human appears in
  final List<Episode> appearsIn;

  /// A list of starships this person has piloted, or an empty list if none
  final List<Starship> starships;

  const _HumanFields({
    this.id,
    this.name,
    this.homePlanet,
    this.height,
    this.mass,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.starships,
  });

  @override
  List<Object> get props => [
        id,
        name,
        homePlanet,
        height,
        mass,
        friends,
        friendsConnection,
        appearsIn,
        starships,
      ];

  /// Creates a new [_HumanFields] with non-null values from [other] as attribute overrides
  _HumanFields mergedLeftWith(covariant _HumanFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _HumanFields(
      id: other.id ?? id,
      name: other.name ?? name,
      homePlanet: other.homePlanet ?? homePlanet,
      height: other.height ?? height,
      mass: other.mass ?? mass,
      friends: other.friends ?? friends,
      friendsConnection: other.friendsConnection ?? friendsConnection,
      appearsIn: other.appearsIn ?? appearsIn,
      starships: other.starships ?? starships,
    );
  }
}

/// A humanoid creature from the Star Wars universe
@immutable
class Human extends Equatable implements Character {
  static final String schemaTypeName = "Human";

  @protected
  final _HumanFields fields;

  @protected
  const Human.fromFields(this.fields);

  Human({
    String id,
    String name,
    String homePlanet,
    double height,
    double mass,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    List<Starship> starships,
  }) : fields = _HumanFields(
          id: id,
          name: name,
          homePlanet: homePlanet,
          height: height,
          mass: mass,
          friends: friends,
          friendsConnection: friendsConnection,
          appearsIn: appearsIn,
          starships: starships,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Human] with non-null values from [other] as attribute overrides
  Human mergedLeftWith(covariant Human other) =>
      Human.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Human operator <<(covariant Human other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    if (fields.friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (fields.appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

///
@immutable
class _StarshipFields extends Equatable {
  /// The ID of the starship
  final String id;

  /// The name of the starship
  final String name;

  /// Length of the starship, along the longest axis
  final double length;
  final List<double> coordinates;

  const _StarshipFields({
    this.id,
    this.name,
    this.length,
    this.coordinates,
  });

  @override
  List<Object> get props => [
        id,
        name,
        length,
        coordinates,
      ];

  /// Creates a new [_StarshipFields] with non-null values from [other] as attribute overrides
  _StarshipFields mergedLeftWith(covariant _StarshipFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _StarshipFields(
      id: other.id ?? id,
      name: other.name ?? name,
      length: other.length ?? length,
      coordinates: other.coordinates ?? coordinates,
    );
  }
}

///
@immutable
class Starship extends Equatable {
  static final String schemaTypeName = "Starship";

  @protected
  final _StarshipFields fields;

  @protected
  const Starship.fromFields(this.fields);

  Starship({
    String id,
    String name,
    double length,
    List<double> coordinates,
  }) : fields = _StarshipFields(
          id: id,
          name: name,
          length: length,
          coordinates: coordinates,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Starship] with non-null values from [other] as attribute overrides
  Starship mergedLeftWith(covariant Starship other) =>
      Starship.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Starship operator <<(covariant Starship other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// An autonomous mechanical character in the Star Wars universe
@immutable
class _DroidFields extends Equatable implements _CharacterFields {
  /// The ID of the droid
  final String id;

  /// What others call this droid
  final String name;

  /// This droid's friends, or an empty list if they have none
  final List<Character> friends;

  /// The friends of the droid exposed as a connection with edges
  final FriendsConnection friendsConnection;

  /// The movies this droid appears in
  final List<Episode> appearsIn;

  /// This droid's primary function
  final String primaryFunction;

  const _DroidFields({
    this.id,
    this.name,
    this.friends,
    this.friendsConnection,
    this.appearsIn,
    this.primaryFunction,
  });

  @override
  List<Object> get props => [
        id,
        name,
        friends,
        friendsConnection,
        appearsIn,
        primaryFunction,
      ];

  /// Creates a new [_DroidFields] with non-null values from [other] as attribute overrides
  _DroidFields mergedLeftWith(covariant _DroidFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _DroidFields(
      id: other.id ?? id,
      name: other.name ?? name,
      friends: other.friends ?? friends,
      friendsConnection: other.friendsConnection ?? friendsConnection,
      appearsIn: other.appearsIn ?? appearsIn,
      primaryFunction: other.primaryFunction ?? primaryFunction,
    );
  }
}

/// An autonomous mechanical character in the Star Wars universe
@immutable
class Droid extends Equatable implements Character {
  static final String schemaTypeName = "Droid";

  @protected
  final _DroidFields fields;

  @protected
  const Droid.fromFields(this.fields);

  Droid({
    String id,
    String name,
    List<Character> friends,
    FriendsConnection friendsConnection,
    List<Episode> appearsIn,
    String primaryFunction,
  }) : fields = _DroidFields(
          id: id,
          name: name,
          friends: friends,
          friendsConnection: friendsConnection,
          appearsIn: appearsIn,
          primaryFunction: primaryFunction,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Droid] with non-null values from [other] as attribute overrides
  Droid mergedLeftWith(covariant Droid other) =>
      Droid.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Droid operator <<(covariant Droid other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    if (fields.id == null) {
      missingFields.add("id");
    }
    if (fields.name == null) {
      missingFields.add("name");
    }
    if (fields.friendsConnection == null) {
      missingFields.add("friendsConnection");
    }
    if (fields.appearsIn == null) {
      missingFields.add("appearsIn");
    }
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// The mutation type, represents all updates we can make to our data
@immutable
class _MutationFields extends Equatable {
  final Review createReview;

  const _MutationFields({
    this.createReview,
  });

  @override
  List<Object> get props => [
        createReview,
      ];

  /// Creates a new [_MutationFields] with non-null values from [other] as attribute overrides
  _MutationFields mergedLeftWith(covariant _MutationFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _MutationFields(
      createReview: other.createReview ?? createReview,
    );
  }
}

/// The mutation type, represents all updates we can make to our data
@immutable
class Mutation extends Equatable {
  static final String schemaTypeName = "Mutation";

  @protected
  final _MutationFields fields;

  @protected
  const Mutation.fromFields(this.fields);

  Mutation({
    Review createReview,
  }) : fields = _MutationFields(
          createReview: createReview,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Mutation] with non-null values from [other] as attribute overrides
  Mutation mergedLeftWith(covariant Mutation other) =>
      Mutation.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Mutation operator <<(covariant Mutation other) => mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}

/// The subscription type, represents all subscriptions we can make to our data
@immutable
class _SubscriptionFields extends Equatable {
  final Review reviewAdded;

  const _SubscriptionFields({
    this.reviewAdded,
  });

  @override
  List<Object> get props => [
        reviewAdded,
      ];

  /// Creates a new [_SubscriptionFields] with non-null values from [other] as attribute overrides
  _SubscriptionFields mergedLeftWith(covariant _SubscriptionFields other) {
    assert(other != null, "$this Cannot be merged with null");
    return _SubscriptionFields(
      reviewAdded: other.reviewAdded ?? reviewAdded,
    );
  }
}

/// The subscription type, represents all subscriptions we can make to our data
@immutable
class Subscription extends Equatable {
  static final String schemaTypeName = "Subscription";

  @protected
  final _SubscriptionFields fields;

  @protected
  const Subscription.fromFields(this.fields);

  Subscription({
    Review reviewAdded,
  }) : fields = _SubscriptionFields(
          reviewAdded: reviewAdded,
        );

  @override
  List<Object> get props => [fields];

  /// Creates a new [Subscription] with non-null values from [other] as attribute overrides
  Subscription mergedLeftWith(covariant Subscription other) =>
      Subscription.fromFields(fields.mergedLeftWith(other.fields));

  /// Alias for [mergedLeftWith]
  Subscription operator <<(covariant Subscription other) =>
      mergedLeftWith(other);

  @protected
  Set<String> get missingRequiredFields {
    Set<String> missingFields = Set();
    return missingFields;
  }

  void validate() {
    final missing = missingRequiredFields;
    assert(missing.isEmpty,
        "$runtimeType#$hashCode is missing required fields $missing");
  }

  bool get isValid => missingRequiredFields.isEmpty;
}
