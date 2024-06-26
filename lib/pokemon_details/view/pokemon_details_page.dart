import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_pokeapi/pokemon_details/pokemon_details.dart';
import 'package:user_repository/user_repository.dart';

class PokemonDetailsPage extends StatelessWidget {
  const PokemonDetailsPage({
    required this.url,
    super.key,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          PokemonDetailsCubit(context.read<UserRepository>())..getPokemon(url),
      child: const PokemonDetailsView(),
    );
  }
}
