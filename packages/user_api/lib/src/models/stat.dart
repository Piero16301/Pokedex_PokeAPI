import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'stat.g.dart';

/// {@template stat}
/// Stat Model
/// {@endtemplate}
class Stat extends Equatable {
  /// {@macro stat}
  const Stat({
    required this.base_stat,
    required this.effort,
    required this.stat,
  });

  /// Creates an instance of [Stat] from a [Map]
  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  /// Creates a [Map] from an instance of [Stat]
  Map<String, dynamic> toJson() => _$StatToJson(this);

  /// Base Stat
  final int base_stat;

  /// Effort
  final int effort;

  /// Stat
  final NameUrl stat;

  @override
  List<Object> get props => [
        base_stat,
        effort,
        stat,
      ];
}
