import 'dart:developer';

import 'package:data/data_sources/region/get_regions_data_source.dart';
import 'package:domain/network/region/get_regions_response.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/repositories/region/get_regions_repository.dart';

class GetRegionsRepositoryImpl implements GetRegionsRepository {
  GetRegionsRepositoryImpl({
    required GetRegionsDataSource dataSource,
  }) : _dataSource = dataSource;

  final GetRegionsDataSource _dataSource;

  @override
  Future<Either<Exception, GetRegionResponse>> getRegions() async {
    try {
      final result = await _dataSource.getRegions();

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
