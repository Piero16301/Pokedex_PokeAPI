import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'version_group_detail.g.dart';

/// {@template version_group_detail}
/// Version Group Detail Model
/// {@endtemplate}
class VersionGroupDetail extends Equatable {
  /// {@macro version_group_detail}
  const VersionGroupDetail({
    required this.level_learned_at,
    required this.move_learn_method,
    required this.version_group,
  });

  /// Creates an instance of [VersionGroupDetail] from a [Map]
  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);

  /// Creates a [Map] from an instance of [VersionGroupDetail]
  Map<String, dynamic> toJson() => _$VersionGroupDetailToJson(this);

  /// Level Learned At
  final int level_learned_at;

  /// Move Learn Method
  final NameUrl move_learn_method;

  /// Version Group
  final NameUrl version_group;

  @override
  List<Object> get props => [
        level_learned_at,
        move_learn_method,
        version_group,
      ];
}
