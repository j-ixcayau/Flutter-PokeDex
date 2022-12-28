import 'package:dartz/dartz.dart';
import 'package:domain/network/pokemon/get_pokemons_response.dart';

abstract class GetPokemonsRepository {
  Future<Either<Exception, GetPokemonsResponse>> getPokemons();
}
