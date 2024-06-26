import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'poke_type.g.dart';

/// {@template poke_type}
/// Poke Type Model
/// {@endtemplate}
class PokeType extends Equatable {
  /// {@macro poke_type}
  const PokeType({
    required this.slot,
    required this.type,
  });

  /// Creates an instance of [PokeType] from a [Map]
  factory PokeType.fromJson(Map<String, dynamic> json) =>
      _$PokeTypeFromJson(json);

  /// Creates a [Map] from an instance of [PokeType]
  Map<String, dynamic> toJson() => _$PokeTypeToJson(this);

  /// Slot
  final int slot;

  /// Type
  final NameUrl type;

  @override
  List<Object> get props => [
        slot,
        type,
      ];
}
