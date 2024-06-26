import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'move.g.dart';

/// {@template move}
/// Move Model
/// {@endtemplate}
class Move extends Equatable {
  /// {@macro move}
  const Move({
    required this.move,
    required this.version_group_details,
  });

  /// Creates an instance of [Move] from a [Map]
  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);

  /// Creates a [Map] from an instance of [Move]
  Map<String, dynamic> toJson() => _$MoveToJson(this);

  /// Move
  final NameUrl move;

  /// Version Group Details
  final List<VersionGroupDetail> version_group_details;

  @override
  List<Object> get props => [
        move,
        version_group_details,
      ];
}
