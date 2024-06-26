import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_api/user_api.dart';
import 'package:user_repository/user_repository.dart';

part 'pokemon_details_state.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetailsState> {
  PokemonDetailsCubit(this._userRepository)
      : super(const PokemonDetailsState());

  final UserRepository _userRepository;

  Future<void> getPokemon(String url) async {
    emit(state.copyWith(status: PokemonDetailsStatus.loading));
    try {
      final pokemon = await _userRepository.getPokemon(url);
      emit(
        state.copyWith(
          status: PokemonDetailsStatus.success,
          pokemon: pokemon,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: PokemonDetailsStatus.failure));
    }
  }
}
