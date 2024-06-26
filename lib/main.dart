import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_pokeapi/app/app.dart';
import 'package:pokedex_pokeapi/bootstrap.dart';
import 'package:user_api_remote/user_api_remote.dart';
import 'package:user_repository/user_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final httpClient = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      validateStatus: (status) => true,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  final userApi = UserApiRemote(httpClient: httpClient);
  final userRepository = UserRepository(userApi: userApi);

  await bootstrap(() => AppPage(userRepository: userRepository));
}
