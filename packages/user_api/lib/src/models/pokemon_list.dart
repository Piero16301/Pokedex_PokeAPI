import 'package:equatable/equatable.dart';

part 'pokemon_list.g.dart';

/// {@template pokemon_list}
/// Pokemon List Model
/// {@endtemplate}
class PokemonList extends Equatable {
  /// {@macro pokemon_list}
  const PokemonList({
    required this.name,
    required this.url,
  });

  /// Creates an instance of [PokemonList] from a [Map]
  factory PokemonList.fromJson(Map<String, dynamic> json) =>
      _$PokemonListFromJson(json);

  /// Creates a [Map] from an instance of [PokemonList]
  Map<String, dynamic> toJson() => _$PokemonListToJson(this);

  /// Pokemon name
  final String name;

  /// Pokemon url
  final String url;

  @override
  List<Object> get props => [
        name,
        url,
      ];
}
