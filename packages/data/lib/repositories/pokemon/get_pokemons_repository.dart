import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data/data_sources/pokemon/get_pokemons_data_source.dart';
import 'package:domain/network/pokemon/get_pokemons_response.dart';
import 'package:domain/repositories/pokemon/get_pokemons_repository.dart';

class GetPokemonsRepositoryImpl implements GetPokemonsRepository {
  GetPokemonsRepositoryImpl({
    required GetPokemonsDataSource dataSource,
  }) : _dataSource = dataSource;

  final GetPokemonsDataSource _dataSource;

  @override
  Future<Either<Exception, GetPokemonsResponse>> getPokemons() async {
    try {
      final result = await _dataSource.getPokemons();

      return Right(result);
    } on Exception catch (e) {
      log(e.toString());

      return Left(e);
    } catch (e) {
      log(e.toString());

      return Left(Exception());
    }
  }
}
