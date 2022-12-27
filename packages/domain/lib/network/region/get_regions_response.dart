import 'package:domain/entities/region.dart';

class GetRegionResponse {
  GetRegionResponse({
    required this.results,
  });

  final List<Region> results;
}
