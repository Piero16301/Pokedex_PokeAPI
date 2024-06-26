// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Move _$MoveFromJson(Map<String, dynamic> json) {
  return Move(
    move: NameUrl.fromJson(json['move'] as Map<String, dynamic>? ?? {}),
    version_group_details: (json['version_group_details'] as List<dynamic>?)
            ?.map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.version_group_details,
    };
