// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeType _$PokeTypeFromJson(Map<String, dynamic> json) {
  return PokeType(
    slot: json['slot'] as int? ?? 0,
    type: NameUrl.fromJson(json['type'] as Map<String, dynamic>? ?? {}),
  );
}

Map<String, dynamic> _$PokeTypeToJson(PokeType instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type.toJson(),
    };
