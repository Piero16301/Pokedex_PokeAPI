import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuple/tuple.dart';
import 'package:user_api/user_api.dart';

/// {@template user_api_remote}
/// User API Remote Package
/// {@endtemplate}
class UserApiRemote implements IUserApi {
  /// {@macro user_api_remote}
  UserApiRemote({
    required Dio httpClient,
  }) : _httpClient = httpClient;

  final Dio _httpClient;

  @override
  Future<Tuple2<List<PokemonList>, int>> getPokemonList(String url) async {
    try {
      final response = await _httpClient.get<Map<String, dynamic>>(url);

      if (response.statusCode != 200) {
        throw Exception('Error getting Pokemon list');
      }

      final pokemonListJson = response.data?['results'] as List<dynamic>;
      final pokemonList = pokemonListJson
          .map((json) => PokemonList.fromJson(json as Map<String, dynamic>))
          .toList();

      final total = response.data?['count'] as int;

      return Tuple2(pokemonList, total);
    } catch (e) {
      throw Exception('Error getting Pokemon list');
    }
  }
}
