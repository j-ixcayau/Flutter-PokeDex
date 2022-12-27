import 'package:domain/network/pokemon/get_pokemons_response.dart';

abstract class GetPokemonsDataSource {
  Future<GetPokemonsResponse> getPokemons();
}
