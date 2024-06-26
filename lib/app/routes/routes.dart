import 'package:go_router/go_router.dart';
import 'package:pokedex_pokeapi/home/home.dart';
import 'package:pokedex_pokeapi/pokemon_details/pokemon_details.dart';

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
        routes: [
          GoRoute(
            path: 'pokemon',
            builder: (context, state) {
              final url = state.uri.queryParameters['url']!;
              return PokemonDetailsPage(url: url);
            },
          ),
        ],
      ),
    ],
    debugLogDiagnostics: true,
  );
}
