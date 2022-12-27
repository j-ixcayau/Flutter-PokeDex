import 'package:dartz/dartz.dart';
import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/network/auth/register/register_response.dart';

abstract class RegisterRepository {
  Future<Either<Exception, RegisterResponse>> register(RegisterRequest request);
}
