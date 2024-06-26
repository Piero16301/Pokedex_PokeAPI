// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return Pokemon(
    abilities: (json['abilities'] as List<dynamic>?)
            ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    base_experience: json['base_experience'] as int? ?? 0,
    cries: json['cries'] as Map<String, dynamic>? ?? {},
    forms: (json['forms'] as List<dynamic>?)
            ?.map((e) => NameUrl.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    game_indices: (json['game_indices'] as List<dynamic>?)
            ?.map((e) => GameIndex.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    height: json['height'] as int? ?? 0,
    held_items: (json['held_items'] as List<dynamic>?)
            ?.map((e) => HeldItem.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    id: json['id'] as int? ?? 0,
    is_default: json['is_default'] as bool? ?? false,
    location_area_encounters: json['location_area_encounters'] as String? ?? '',
    moves: (json['moves'] as List<dynamic>?)
            ?.map((e) => Move.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    name: json['name'] as String? ?? '',
    order: json['order'] as int? ?? 0,
    past_abilities: (json['past_abilities'] as List<dynamic>?)
            ?.map((e) => Ability.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    past_types: (json['past_types'] as List<dynamic>?)
            ?.map((e) => PokeType.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    species: NameUrl.fromJson(json['species'] as Map<String, dynamic>? ?? {}),
    sprites: json['sprites'] as Map<String, dynamic>? ?? {},
    stats: (json['stats'] as List<dynamic>?)
            ?.map((e) => Stat.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    types: (json['types'] as List<dynamic>?)
            ?.map((e) => PokeType.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    weight: json['weight'] as int? ?? 0,
  );
}

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.base_experience,
      'cries': instance.cries,
      'forms': instance.forms,
      'game_indices': instance.game_indices,
      'height': instance.height,
      'held_items': instance.held_items,
      'id': instance.id,
      'is_default': instance.is_default,
      'location_area_encounters': instance.location_area_encounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'past_abilities': instance.past_abilities,
      'past_types': instance.past_types,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };
