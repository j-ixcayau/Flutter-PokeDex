import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:data/data_sources/auth/auth_data_source.dart';
import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/network/auth/login/login_response.dart';

import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/network/auth/register/register_response.dart';
import 'package:domain/repositories/auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required AuthDataSource dataSource,
  }) : _dataSource = dataSource;

  final AuthDataSource _dataSource;

  @override
  Future<Either<Exception, bool>> isUserLogged() async {
    try {
      final result = await _dataSource.isUserLogged();

      return Right(result);
    } on Exception catch (e) {
      log(e.toString());

      return Left(e);
    } catch (e) {
      log(e.toString());

      return Left(Exception());
    }
  }

  @override
  Future<Either<Exception, LoginResponse>> login(LoginRequest request) async {
    try {
      final result = await _dataSource.login(request);

      return Right(result);
    } on Exception catch (e) {
      log(e.toString());

      return Left(e);
    } catch (e) {
      log(e.toString());

      return Left(Exception());
    }
  }

  @override
  Future<Either<Exception, RegisterResponse>> register(
    RegisterRequest request,
  ) async {
    try {
      final result = await _dataSource.register(request);

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
