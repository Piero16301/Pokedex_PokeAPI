import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'game_index.g.dart';

/// {@template game_index}
/// Game Index Model
/// {@endtemplate}
class GameIndex extends Equatable {
  /// {@macro game_index}
  const GameIndex({
    required this.game_index,
    required this.version,
  });

  /// Creates an instance of [GameIndex] from a [Map]
  factory GameIndex.fromJson(Map<String, dynamic> json) =>
      _$GameIndexFromJson(json);

  /// Creates a [Map] from an instance of [GameIndex]
  Map<String, dynamic> toJson() => _$GameIndexToJson(this);

  /// Game Index
  final int game_index;

  /// Game Version
  final NameUrl version;

  @override
  List<Object> get props => [
        game_index,
        version,
      ];
}
