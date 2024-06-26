part of 'pokemon_details_cubit.dart';

enum PokemonDetailsStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == PokemonDetailsStatus.initial;
  bool get isLoading => this == PokemonDetailsStatus.loading;
  bool get isSuccess => this == PokemonDetailsStatus.success;
  bool get isFailure => this == PokemonDetailsStatus.failure;
}

class PokemonDetailsState extends Equatable {
  const PokemonDetailsState({
    this.status = PokemonDetailsStatus.initial,
    this.pokemon = Pokemon.empty,
  });

  final PokemonDetailsStatus status;
  final Pokemon pokemon;

  PokemonDetailsState copyWith({
    PokemonDetailsStatus? status,
    Pokemon? pokemon,
  }) {
    return PokemonDetailsState(
      status: status ?? this.status,
      pokemon: pokemon ?? this.pokemon,
    );
  }

  @override
  List<Object?> get props => [
        status,
        pokemon,
      ];
}
