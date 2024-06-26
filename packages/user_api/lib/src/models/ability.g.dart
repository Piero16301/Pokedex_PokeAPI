// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ability _$AbilityFromJson(Map<String, dynamic> json) {
  return Ability(
    ability: NameUrl.fromJson(json['ability'] as Map<String, dynamic>? ?? {}),
    is_hidden: json['is_hidden'] as bool? ?? false,
    slot: json['slot'] as int? ?? 0,
  );
}

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.is_hidden,
      'slot': instance.slot,
    };
