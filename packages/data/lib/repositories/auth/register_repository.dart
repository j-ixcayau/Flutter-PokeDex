import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data/data_sources/auth/register_data_source.dart';
import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/network/auth/register/register_response.dart';
import 'package:domain/repositories/auth/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  RegisterRepositoryImpl({
    required RegisterDataSource datasource,
  }) : _datasource = datasource;

  final RegisterDataSource _datasource;

  @override
  Future<Either<Exception, RegisterResponse>> register(
    RegisterRequest request,
  ) async {
    try {
      final result = await _datasource.register(request);

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
