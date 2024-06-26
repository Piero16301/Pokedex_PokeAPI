import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_pokeapi/pokemon_details/pokemon_details.dart';
import 'package:user_api/user_api.dart';

class PokemonDetailsView extends StatelessWidget {
  const PokemonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pokemon Details',
          style: TextStyle(
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
            builder: (context, state) {
              switch (state.status) {
                case PokemonDetailsStatus.initial:
                  return const Center(child: SizedBox.shrink());
                case PokemonDetailsStatus.loading:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                case PokemonDetailsStatus.success:
                  return Column(
                    children: [
                      PokemonFeatures(pokemon: state.pokemon),
                    ],
                  );
                case PokemonDetailsStatus.failure:
                  return const Center(
                    child: Text('Error while fetching pokemon details'),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

class PokemonFeatures extends StatelessWidget {
  const PokemonFeatures({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ImageDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            NameDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            FeaturesDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            AbilityDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            StatsDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            TypesDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            FormsDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            GameIndicesDetails(pokemon: pokemon),
            const SizedBox(height: 20),
            MovesDetails(pokemon: pokemon),
          ],
        ),
      ),
    );
  }
}

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.network(
          ((pokemon.sprites['other']
                  as Map<String, dynamic>)['official-artwork']
              as Map<String, dynamic>)['front_default'] as String,
        ),
      ),
    );
  }
}

class NameDetails extends StatelessWidget {
  const NameDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Text(
      pokemon.name.toUpperCase(),
      style: const TextStyle(
        fontSize: 22,
        fontFamily: 'PlaywriteDEGrund-Regular',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class FeaturesDetails extends StatelessWidget {
  const FeaturesDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Features'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Card(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Height',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${pokemon.height}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Weight',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${pokemon.weight}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              const Text(
                                'Experience',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${pokemon.base_experience}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                'Order',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                '${pokemon.order}',
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'PlaywriteDEGrund-Regular',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  'Species',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'PlaywriteDEGrund-Regular',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  pokemon.species.name.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'PlaywriteDEGrund-Regular',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AbilityDetails extends StatelessWidget {
  const AbilityDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final maxSlot = pokemon.abilities.fold<int>(
      0,
      (previousValue, element) {
        if (element.slot > previousValue) {
          return element.slot;
        }
        return previousValue;
      },
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Abilities'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    for (var i = 1; i <= maxSlot; i++)
                      SizedBox(
                        height: 100,
                        width: 200,
                        child: Card(
                          color: pokemon.abilities.any(
                            (element) => element.slot == i,
                          )
                              ? Colors.blue.withOpacity(0.5)
                              : Colors.grey.withOpacity(0.5),
                          child: Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(
                                  i.toString(),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.3),
                                    fontSize: 60,
                                    fontFamily: 'PlaywriteDEGrund-Regular',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  pokemon.abilities.any(
                                    (element) => element.slot == i,
                                  )
                                      ? pokemon.abilities
                                          .firstWhere(
                                            (element) => element.slot == i,
                                          )
                                          .ability
                                          .name
                                          .toUpperCase()
                                      : '',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'PlaywriteDEGrund-Regular',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class StatsDetails extends StatelessWidget {
  const StatsDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Stats'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            for (final stat in pokemon.stats)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        stat.stat.name.replaceAll('-', ' ').toUpperCase(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'PlaywriteDEGrund-Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: buildBaseStatBar(stat.base_stat),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget buildBaseStatBar(int baseStat) {
    final validBaseStat = baseStat.clamp(0, 225);
    final widthPercentage = validBaseStat / 225;

    return Container(
      width: double.infinity,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 200 * widthPercentage,
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Center(
              child: Text(
                baseStat.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'PlaywriteDEGrund-Regular',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TypesDetails extends StatelessWidget {
  const TypesDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Types'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    for (final type in pokemon.types)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Card(
                          color: Colors.blue.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              type.type.name.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'PlaywriteDEGrund-Regular',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class FormsDetails extends StatelessWidget {
  const FormsDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Forms'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    for (final form in pokemon.forms)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Card(
                          color: Colors.blue.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              form.name.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'PlaywriteDEGrund-Regular',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class GameIndicesDetails extends StatelessWidget {
  const GameIndicesDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Game Indices'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    for (final gameIndex in pokemon.game_indices)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Card(
                          color: Colors.blue.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              gameIndex.version.name.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'PlaywriteDEGrund-Regular',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MovesDetails extends StatelessWidget {
  const MovesDetails({
    required this.pokemon,
    super.key,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Moves'.toUpperCase(),
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'PlaywriteDEGrund-Regular',
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Column(
          children: [
            for (final move in pokemon.moves)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        move.move.name.replaceAll('-', ' ').toUpperCase(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'PlaywriteDEGrund-Regular',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            for (final versionGroupDetail
                                in move.version_group_details)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.5),
                                child: Card(
                                  color: Colors.blue.withOpacity(0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Text(
                                      versionGroupDetail.version_group.name
                                          .replaceAll('-', ' ')
                                          .toUpperCase(),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: 'PlaywriteDEGrund-Regular',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
