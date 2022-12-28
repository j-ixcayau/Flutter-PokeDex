import 'package:dartz/dartz.dart';

import 'package:domain/network/auth/social/social_auth_response.dart';

abstract class SocialAuthRepository {
  Future<Either<Exception, SocialAuthResponse?>> googleAuth();
  Future<Either<Exception, SocialAuthResponse?>> facebookAuth();
  Future<Either<Exception, void>> logout();
}
