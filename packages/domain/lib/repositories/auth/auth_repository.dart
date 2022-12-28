import 'package:dartz/dartz.dart';
import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/network/auth/login/login_response.dart';

import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/network/auth/register/register_response.dart';

abstract class AuthRepository {
  Future<Either<Exception, LoginResponse>> login(LoginRequest request);
  Future<Either<Exception, RegisterResponse>> register(RegisterRequest request);
  Future<Either<Exception, bool>> isUserLogged();
  Future<Either<Exception, void>> logout();
}
