import 'package:domain/entities/pokemon.dart';

class GetPokemonsResponse {
  GetPokemonsResponse({
    required this.results,
  });

  final List<Pokemon> results;
}
