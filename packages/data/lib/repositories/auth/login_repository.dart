import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data/data_sources/auth/login_data_source.dart';
import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/network/auth/login/login_response.dart';
import 'package:domain/repositories/auth/login_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  LoginRepositoryImpl({
    required LoginDatasource datasource,
  }) : _datasource = datasource;

  final LoginDatasource _datasource;

  @override
  Future<Either<Exception, LoginResponse>> login(LoginRequest request) async {
    try {
      final result = await _datasource.login(request);

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
