// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameIndex _$GameIndexFromJson(Map<String, dynamic> json) {
  return GameIndex(
    game_index: json['game_index'] as int? ?? 0,
    version: NameUrl.fromJson(json['version'] as Map<String, dynamic>? ?? {}),
  );
}

Map<String, dynamic> _$GameIndexToJson(GameIndex instance) => <String, dynamic>{
      'game_index': instance.game_index,
      'version': instance.version.toJson(),
    };
