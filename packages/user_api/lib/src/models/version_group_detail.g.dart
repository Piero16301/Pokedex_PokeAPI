// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_group_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) {
  return VersionGroupDetail(
    level_learned_at: json['level_learned_at'] as int? ?? 0,
    move_learn_method: NameUrl.fromJson(
      json['move_learn_method'] as Map<String, dynamic>? ?? {},
    ),
    version_group: NameUrl.fromJson(
      json['version_group'] as Map<String, dynamic>? ?? {},
    ),
  );
}

Map<String, dynamic> _$VersionGroupDetailToJson(VersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.level_learned_at,
      'move_learn_method': instance.move_learn_method.toJson(),
      'version_group': instance.version_group.toJson(),
    };
