// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_human_fragment.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$HomeToJson(Home instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['home'] = instance.home;
  val['planet'] = instance.planet;
  return val;
}

Map<String, dynamic> _$DimensionsToJson(Dimensions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['height'] = instance.height;
  val['mass'] = instance.mass;
  return val;
}

Map<String, dynamic> _$RelationshipsToJson(Relationships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['friends'] = instance.friends?.map((e) => e?.toJson())?.toList();
  val['starships'] = instance.starships?.map((e) => e?.toJson())?.toList();
  return val;
}

Map<String, dynamic> _$InfoToJson(Info instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['height'] = instance.height;
  val['mass'] = instance.mass;
  val['home'] = instance.home;
  val['planet'] = instance.planet;
  return val;
}

HomeSelectionSet _$HomeSelectionSetFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['__typename']);
  return HomeSelectionSet(
    typename: json['__typename'] as String,
    home: json['home'] as String,
    planet: json['planet'] as String,
  );
}

Map<String, dynamic> _$HomeSelectionSetToJson(HomeSelectionSet instance) {
  final val = <String, dynamic>{
    'home': instance.home,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['planet'] = instance.planet;
  return val;
}

DimensionsSelectionSet _$DimensionsSelectionSetFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['__typename']);
  return DimensionsSelectionSet(
    typename: json['__typename'] as String,
    height: (json['height'] as num)?.toDouble(),
    mass: (json['mass'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DimensionsSelectionSetToJson(
    DimensionsSelectionSet instance) {
  final val = <String, dynamic>{
    'height': instance.height,
    'mass': instance.mass,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  return val;
}

RelationshipsStarships _$RelationshipsStarshipsFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name'],
      disallowNullValues: const ['__typename', 'name']);
  return RelationshipsStarships(
    typename: json['__typename'] as String,
    name: json['name'] as String,
    length: (json['length'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$RelationshipsStarshipsToJson(
    RelationshipsStarships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  writeNotNull('name', instance.name);
  val['length'] = instance.length;
  return val;
}

RelationshipsFriends _$RelationshipsFriendsFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name'],
      disallowNullValues: const ['__typename', 'name']);
  return RelationshipsFriends(
    typename: json['__typename'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$RelationshipsFriendsToJson(
    RelationshipsFriends instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  writeNotNull('name', instance.name);
  return val;
}

RelationshipsSelectionSet _$RelationshipsSelectionSetFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['__typename']);
  return RelationshipsSelectionSet(
    typename: json['__typename'] as String,
    friends: (json['friends'] as List)
        ?.map((e) => e == null
            ? null
            : RelationshipsFriends.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    starships: (json['starships'] as List)
        ?.map((e) => e == null
            ? null
            : RelationshipsStarships.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RelationshipsSelectionSetToJson(
    RelationshipsSelectionSet instance) {
  final val = <String, dynamic>{
    'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
    'starships': instance.starships?.map((e) => e?.toJson())?.toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  return val;
}

InfoSelectionSet _$InfoSelectionSetFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['__typename']);
  return InfoSelectionSet(
    typename: json['__typename'] as String,
    height: (json['height'] as num)?.toDouble(),
    mass: (json['mass'] as num)?.toDouble(),
    home: json['home'] as String,
    planet: json['planet'] as String,
  );
}

Map<String, dynamic> _$InfoSelectionSetToJson(InfoSelectionSet instance) {
  final val = <String, dynamic>{
    'height': instance.height,
    'mass': instance.mass,
    'home': instance.home,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['planet'] = instance.planet;
  return val;
}
