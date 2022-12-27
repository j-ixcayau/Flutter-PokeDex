import 'package:domain/network/region/get_regions_response.dart';

abstract class GetRegionsDataSource {
  Future<GetRegionResponse> getRegions();
}
