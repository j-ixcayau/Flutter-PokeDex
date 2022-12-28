import 'package:domain/entities/region.dart';

class GetRegionResponse {
  GetRegionResponse({
    required this.results,
  });

  final List<Region> results;

  factory GetRegionResponse.fromJson(Map<String, dynamic> map) {
    final regions = (map['results'] as List)
        .map(
          (result) => Region.fromJson(result),
        )
        .toList();

    return GetRegionResponse(
      results: regions,
    );
  }
}
