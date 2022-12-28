import 'dart:developer';

import 'package:domain/entities/pokemon.dart';
import 'package:domain/repositories/pokemon/get_pokemons_repository.dart';
import 'package:flutter/widgets.dart';

class PokemonsViewModel extends ChangeNotifier {
  PokemonsViewModel({
    required GetPokemonsRepository repository,
  }) : _repository = repository;

  final GetPokemonsRepository _repository;

  List<Pokemon> pokemons = [];

  void getPokemons() async {
    final result = await _repository.getPokemons();

    result.fold(
      (l) {
        log(l.toString());
      },
      (r) {
        pokemons = r.results;
      },
    );
    notifyListeners();
  }

  onPokemonTap(Pokemon pokemon, BuildContext context) {}
}
