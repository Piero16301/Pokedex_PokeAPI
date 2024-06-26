import 'package:user_api/src/models/models.dart';

/// {@template user_api}
/// User API Package
/// {@endtemplate}
abstract class IUserApi {
  /// {@macro user_api}
  const IUserApi();

  /// Get a list of Pokemon
  Future<Map<String, dynamic>> getPokemonList(String url);

  /// Get a Pokemon
  Future<Pokemon> getPokemon(String url);
}
