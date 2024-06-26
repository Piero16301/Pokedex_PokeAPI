import 'package:dio/dio.dart';
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
  Future<Map<String, dynamic>> getPokemonList(String url) async {
    try {
      final response = await _httpClient.get<Map<String, dynamic>>(url);

      if (response.statusCode != 200) {
        throw Exception('Error getting Pokemon list');
      }

      if (response.data == null) {
        throw Exception('Error getting Pokemon list');
      }

      return response.data!;
    } catch (e) {
      throw Exception('Error getting Pokemon list');
    }
  }
}
