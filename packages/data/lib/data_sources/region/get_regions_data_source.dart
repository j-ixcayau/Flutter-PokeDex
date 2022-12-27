import 'package:domain/network/network.dart';

abstract class GetRegionsDataSource {
  Future<GetRegionResponse> getRegions();
}
