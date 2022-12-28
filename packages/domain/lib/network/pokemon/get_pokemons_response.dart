import 'package:domain/entities/pokemon.dart';

class GetPokemonsResponse {
  GetPokemonsResponse({
    required this.results,
  });

  final List<Pokemon> results;

  factory GetPokemonsResponse.fromJson(Map<String, dynamic> json) {
    final results = (json['results'] as List)
        .map(
          (result) => Pokemon.fromJson(result),
        )
        .toList();

    return GetPokemonsResponse(
      results: results,
    );
  }
}
