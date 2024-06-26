import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'ability.g.dart';

/// {@template ability}
/// Ability Model
/// {@endtemplate}
class Ability extends Equatable {
  /// {@macro ability}
  const Ability({
    required this.ability,
    required this.is_hidden,
    required this.slot,
  });

  /// Creates an instance of [Ability] from a [Map]
  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  /// Creates a [Map] from an instance of [Ability]
  Map<String, dynamic> toJson() => _$AbilityToJson(this);

  /// Ability
  final NameUrl ability;

  /// Is Hidden
  final bool is_hidden;

  /// Slot
  final int slot;

  @override
  List<Object> get props => [
        ability,
        is_hidden,
        slot,
      ];
}
