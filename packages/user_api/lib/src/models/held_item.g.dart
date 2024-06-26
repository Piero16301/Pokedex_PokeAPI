// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'held_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeldItem _$HeldItemFromJson(Map<String, dynamic> json) {
  return HeldItem(
    item: NameUrl.fromJson(json['item'] as Map<String, dynamic>),
    version_details: (json['version_details'] as List<dynamic>?)
            ?.map((e) => VersionDetail.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$HeldItemToJson(HeldItem instance) => <String, dynamic>{
      'item': instance.item,
      'version_details': instance.version_details,
    };
