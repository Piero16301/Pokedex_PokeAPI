import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_pokeapi/pokemon_details/pokemon_details.dart';

class PokemonDetailsView extends StatelessWidget {
  const PokemonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
      builder: (context, state) {
        switch (state.status) {
          case PokemonDetailsStatus.initial:
            return const Center(child: SizedBox.shrink());
          case PokemonDetailsStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case PokemonDetailsStatus.success:
            debugPrint(state.pokemon.toString());
            return Column(
              children: [
                Text(state.pokemon.name),
              ],
            );
          case PokemonDetailsStatus.failure:
            return const Center(
              child: Text('Error al cargar el pokemon'),
            );
        }
      },
    );
  }
}
