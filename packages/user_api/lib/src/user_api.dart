import 'dart:typed_data';

import 'package:tuple/tuple.dart';
import 'package:user_api/src/models/models.dart';

/// {@template user_api}
/// User API Package
/// {@endtemplate}
abstract class IUserApi {
  /// {@macro user_api}
  const IUserApi();

  /// Get a list of Pokemon
  Future<Tuple2<List<PokemonList>, int>> getPokemonList(String url);
}
