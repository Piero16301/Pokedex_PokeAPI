// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_url.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameUrl _$NameUrlFromJson(Map<String, dynamic> json) {
  return NameUrl(
    name: json['name'] as String? ?? '',
    url: json['url'] as String? ?? '',
  );
}

Map<String, dynamic> _$NameUrlToJson(NameUrl instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
