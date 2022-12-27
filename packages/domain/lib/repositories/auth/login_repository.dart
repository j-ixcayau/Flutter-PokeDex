import 'package:dartz/dartz.dart';
import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/network/auth/login/login_response.dart';

abstract class LoginRepository {
  Future<Either<Exception, LoginResponse>> login(LoginRequest request);
}
