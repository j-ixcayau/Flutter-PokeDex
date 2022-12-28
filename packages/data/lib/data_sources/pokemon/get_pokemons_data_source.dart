import 'dart:convert';
import 'dart:developer';

import 'package:domain/network/pokemon/get_pokemons_response.dart';

import 'package:data/utils/http_client.dart';

abstract class GetPokemonsDataSource {
  Future<GetPokemonsResponse> getPokemons();
}

class GetPokemonsDataSourceImpl implements GetPokemonsDataSource {
  GetPokemonsDataSourceImpl({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<GetPokemonsResponse> getPokemons() async {
    try {
      final result =
          await _httpClient.get('https://pokeapi.co/api/v2/pokemon?limit=1154');

      final json = jsonDecode(result.body);

      return GetPokemonsResponse.fromJson(json);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
