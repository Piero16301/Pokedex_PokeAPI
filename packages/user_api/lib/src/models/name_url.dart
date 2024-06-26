import 'package:equatable/equatable.dart';

part 'name_url.g.dart';

/// {@template name_url}
/// Name Url Model
/// {@endtemplate}
class NameUrl extends Equatable {
  /// {@macro name_url}
  const NameUrl({
    required this.name,
    required this.url,
  });

  /// Creates an instance of [NameUrl] from a [Map]
  factory NameUrl.fromJson(Map<String, dynamic> json) =>
      _$NameUrlFromJson(json);

  /// Empty NameUrl
  static const empty = NameUrl(
    name: '',
    url: '',
  );

  /// Creates a [Map] from an instance of [NameUrl]
  Map<String, dynamic> toJson() => _$NameUrlToJson(this);

  /// Name
  final String name;

  /// Url
  final String url;

  @override
  List<Object> get props => [
        name,
        url,
      ];
}
