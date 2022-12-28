import 'dart:convert';
import 'dart:developer';

import 'package:data/utils/http_client.dart';
import 'package:domain/network/region/get_regions_response.dart';

abstract class GetRegionsDataSource {
  Future<GetRegionResponse> getRegions();
}

class GetRegionsDataSourceImpl implements GetRegionsDataSource {
  GetRegionsDataSourceImpl({
    required HttpClient httpClient,
  }) : _httpClient = httpClient;

  final HttpClient _httpClient;

  @override
  Future<GetRegionResponse> getRegions() async {
    try {
      final result = await _httpClient.get('https://pokeapi.co/api/v2/region');

      final json = jsonDecode(result.body);

      return GetRegionResponse.fromJson(json);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
