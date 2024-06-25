import 'package:go_router/go_router.dart';
import 'package:pokedex_pokeapi/home/home.dart';

GoRouter goRouter() {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
    ],
    debugLogDiagnostics: true,
  );
}
