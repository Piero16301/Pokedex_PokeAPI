import 'package:go_router/go_router.dart';
import 'package:pokedex_pokeapi/home/home.dart';

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: '/pokemon/:url',
            builder: (context, state) {
              final url = state.pathParameters['url'];
              return PokemonDetailsPage(url: url);
            },
          ),
        ],
      ),
    ],
    debugLogDiagnostics: true,
  );
}
