import 'package:user_api/user_api.dart';

/// {@template user_repository}
/// User Repository Package
/// {@endtemplate}
class UserRepository {
  /// {@macro user_repository}
  const UserRepository({
    required IUserApi userApi,
  }) : _userApi = userApi;

  final IUserApi _userApi;

  /// Get a list of Pokemon
  Future<Map<String, dynamic>> getPokemonList(String url) =>
      _userApi.getPokemonList(url);
}
