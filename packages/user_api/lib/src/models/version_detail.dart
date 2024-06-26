import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'version_detail.g.dart';

/// {@template version_detail}
/// Version Detail Model
/// {@endtemplate}
class VersionDetail extends Equatable {
  /// {@macro version_detail}
  const VersionDetail({
    required this.version,
    required this.rarity,
  });

  /// Creates an instance of [VersionDetail] from a [Map]
  factory VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailFromJson(json);

  /// Creates a [Map] from an instance of [VersionDetail]
  Map<String, dynamic> toJson() => _$VersionDetailToJson(this);

  /// Version
  final NameUrl version;

  /// Rarity
  final int rarity;

  @override
  List<Object> get props => [
        version,
        rarity,
      ];
}
