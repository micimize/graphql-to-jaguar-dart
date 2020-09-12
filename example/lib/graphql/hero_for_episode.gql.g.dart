// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_for_episode.gql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroForEpisodeVariables _$HeroForEpisodeVariablesFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['ep'], disallowNullValues: const ['ep']);
  return HeroForEpisodeVariables(
    ep: _$enumDecodeNullable(_$EpisodeEnumMap, json['ep']),
  );
}

Map<String, dynamic> _$HeroForEpisodeVariablesToJson(
    HeroForEpisodeVariables instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ep', _$EpisodeEnumMap[instance.ep]);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$EpisodeEnumMap = {
  Episode.NEWHOPE: 'NEWHOPE',
  Episode.EMPIRE: 'EMPIRE',
  Episode.JEDI: 'JEDI',
};

HeroForEpisodeHumanInlineFragment _$HeroForEpisodeHumanInlineFragmentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['appearsIn'],
      disallowNullValues: const ['__typename', 'appearsIn']);
  return HeroForEpisodeHumanInlineFragment(
    typename: json['__typename'] as String,
    appearsIn: (json['appearsIn'] as List)
        ?.map((e) => _$enumDecodeNullable(_$EpisodeEnumMap, e))
        ?.toList(),
    height: (json['height'] as num)?.toDouble(),
    mass: (json['mass'] as num)?.toDouble(),
    home: json['home'] as String,
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
    planet: json['planet'] as String,
  );
}

Map<String, dynamic> _$HeroForEpisodeHumanInlineFragmentToJson(
    HeroForEpisodeHumanInlineFragment instance) {
  final val = <String, dynamic>{
    'friends': instance.friends?.map((e) => e?.toJson())?.toList(),
    'starships': instance.starships?.map((e) => e?.toJson())?.toList(),
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
  writeNotNull('appearsIn',
      instance.appearsIn?.map((e) => _$EpisodeEnumMap[e])?.toList());
  val['planet'] = instance.planet;
  return val;
}

HeroForEpisodeDroidInlineFragment _$HeroForEpisodeDroidInlineFragmentFromJson(
    Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['__typename']);
  return HeroForEpisodeDroidInlineFragment(
    typename: json['__typename'] as String,
    primaryFunction: json['primaryFunction'] as String,
  );
}

Map<String, dynamic> _$HeroForEpisodeDroidInlineFragmentToJson(
    HeroForEpisodeDroidInlineFragment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['primaryFunction'] = instance.primaryFunction;
  return val;
}

HeroForEpisodeHero _$HeroForEpisodeHeroFromJson(Map<String, dynamic> json) {
  $checkKeys(json,
      requiredKeys: const ['name'],
      disallowNullValues: const ['__typename', 'name']);
  return HeroForEpisodeHero(
    typename: json['__typename'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$HeroForEpisodeHeroToJson(HeroForEpisodeHero instance) {
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

HeroForEpisodeQuery _$HeroForEpisodeQueryFromJson(Map<String, dynamic> json) {
  $checkKeys(json, disallowNullValues: const ['__typename']);
  return HeroForEpisodeQuery(
    typename: json['__typename'] as String,
    hero: json['hero'] == null
        ? null
        : HeroForEpisodeHero.fromJson(json['hero'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HeroForEpisodeQueryToJson(HeroForEpisodeQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('__typename', instance.typename);
  val['hero'] = instance.hero?.toJson();
  return val;
}
