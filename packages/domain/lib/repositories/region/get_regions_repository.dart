import 'package:dartz/dartz.dart';
import 'package:domain/network/region/get_regions_response.dart';

abstract class GetRegionsRepository {
  Either<Exception, GetRegionResponse> getRegions();
}
