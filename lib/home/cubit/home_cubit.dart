import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._userRepository) : super(const HomeState());

  final UserRepository _userRepository;

  Future<Map<String, dynamic>> loadPokemons(String next) async {
    emit(state.copyWith(homeStatus: HomeStatus.loading));
    try {
      final response = await _userRepository.getPokemonList(next);
      emit(
        state.copyWith(
          homeStatus: HomeStatus.success,
          total: response['count'] as int,
        ),
      );
      return response;
    } catch (e) {
      emit(state.copyWith(homeStatus: HomeStatus.failure));
      return {};
    }
  }
}
