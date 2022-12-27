import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:domain/network/auth/social/social_auth_response.dart';
import 'package:domain/repositories/auth/social_auth_repository.dart';

import 'package:data/data_sources/auth/social_auth_data_source.dart';

class SocialAuthRepositoryImpl extends SocialAuthRepository {
  SocialAuthRepositoryImpl({
    required SocialAuthDataSoure dataSource,
  }) : _dataSource = dataSource;

  final SocialAuthDataSoure _dataSource;

  @override
  Future<Either<Exception, SocialAuthResponse?>> facebookAuth() {
    // TODO: implement facebookAuth
    throw UnimplementedError();
  }

  @override
  Future<Either<Exception, SocialAuthResponse?>> googleAuth() async {
    try {
      final result = await _dataSource.googleAuth();
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
