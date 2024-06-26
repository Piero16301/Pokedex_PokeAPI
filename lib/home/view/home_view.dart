import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:pokedex_pokeapi/home/home.dart';
import 'package:user_api/user_api.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex PokeAPI'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              PokemonListHome(),
            ],
          ),
        ),
      ),
    );
  }
}

class PokemonListHome extends StatefulWidget {
  const PokemonListHome({super.key});

  @override
  State<PokemonListHome> createState() => _PokemonListHomeState();
}

class _PokemonListHomeState extends State<PokemonListHome> {
  final PagingController<String, PokemonList> _pagingController =
      PagingController(
    firstPageKey: 'https://pokeapi.co/api/v2/pokemon?limit=10&offset=0',
  );

  @override
  void initState() {
    _pagingController.addPageRequestListener(_fetchPage);
    super.initState();
  }

  Future<void> _fetchPage(String url) async {
    try {
      final response = await context.read<HomeCubit>().loadPokemons(url);

      final pokemonList = response['results'] as List<dynamic>;
      final pokemons = pokemonList
          .map((e) => PokemonList.fromJson(e as Map<String, dynamic>))
          .toList();

      final isLastPage = response['next'] == null;
      if (isLastPage) {
        _pagingController.appendLastPage(pokemons);
      } else {
        final nextUrl = response['next'] as String;
        _pagingController.appendPage(pokemons, nextUrl);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => Future.sync(_pagingController.refresh),
        child: PagedListView<String, PokemonList>.separated(
          pagingController: _pagingController,
          physics: const AlwaysScrollableScrollPhysics(),
          builderDelegate: PagedChildBuilderDelegate<PokemonList>(
            noItemsFoundIndicatorBuilder: (context) => const Center(
              child: Text('No se encontraron pokemones'),
            ),
            itemBuilder: (context, pokemon, index) {
              return ListTile(
                onTap: () => context.push('/pokemon?url=${pokemon.url}'),
                title: Text(
                  pokemon.name.toUpperCase(),
                  style: const TextStyle(
                    fontFamily: 'PlaywriteDEGrund-Regular',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Text(
                  pokemon.url,
                  style: const TextStyle(
                    fontFamily: 'PlaywriteDEGrund-Light',
                  ),
                ),
              );
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}
