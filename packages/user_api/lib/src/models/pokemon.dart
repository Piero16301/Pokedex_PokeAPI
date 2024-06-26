import 'package:equatable/equatable.dart';
import 'package:user_api/src/models/models.dart';

part 'pokemon.g.dart';

/// {@template pokemon}
/// Pokemon Model
/// {@endtemplate}
class Pokemon extends Equatable {
  /// {@macro pokemon}
  const Pokemon({
    required this.abilities,
    required this.base_experience,
    required this.cries,
    required this.forms,
    required this.game_indices,
    required this.height,
    required this.held_items,
    required this.id,
    required this.is_default,
    required this.location_area_encounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.past_abilities,
    required this.past_types,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  /// Creates an instance of [Pokemon] from a [Map]
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  /// Empty Pokemon
  static const empty = Pokemon(
    abilities: [],
    base_experience: 0,
    cries: {},
    forms: [],
    game_indices: [],
    height: 0,
    held_items: [],
    id: 0,
    is_default: false,
    location_area_encounters: '',
    moves: [],
    name: '',
    order: 0,
    past_abilities: [],
    past_types: [],
    species: NameUrl.empty,
    sprites: {},
    stats: [],
    types: [],
    weight: 0,
  );

  /// Creates a [Map] from an instance of [Pokemon]
  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  /// Pokemon abilities
  final List<Ability> abilities;

  /// Pokemon base experience
  final int base_experience;

  /// Pokemon cries
  final Map<String, dynamic> cries;

  /// Pokemon forms
  final List<NameUrl> forms;

  /// Pokemon game indices
  final List<GameIndex> game_indices;

  /// Pokemon height
  final int height;

  /// Pokemon held items
  final List<HeldItem> held_items;

  /// Pokemon id
  final int id;

  /// Pokemon is default
  final bool is_default;

  /// Pokemon location area encounters
  final String location_area_encounters;

  /// Pokemon moves
  final List<Move> moves;

  /// Pokemon name
  final String name;

  /// Pokemon order
  final int order;

  /// Pokemon past abilities
  final List<Ability> past_abilities;

  /// Pokemon past types
  final List<PokeType> past_types;

  /// Pokemon species
  final NameUrl species;

  /// Pokemon sprites
  final Map<String, dynamic> sprites;

  /// Pokemon stats
  final List<Stat> stats;

  /// Pokemon types
  final List<PokeType> types;

  /// Pokemon weight
  final int weight;

  @override
  List<Object> get props => [
        abilities,
        base_experience,
        cries,
        forms,
        game_indices,
        height,
        held_items,
        id,
        is_default,
        location_area_encounters,
        moves,
        name,
        order,
        past_abilities,
        past_types,
        species,
        sprites,
        stats,
        types,
        weight,
      ];
}
