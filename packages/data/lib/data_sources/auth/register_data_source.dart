import 'dart:developer';

import 'package:domain/entities/user.dart';
import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/network/auth/register/register_response.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

abstract class RegisterDataSource {
  Future<RegisterResponse> register(RegisterRequest request);
}

class RegisterDataSourceImpl extends RegisterDataSource {
  @override
  Future<RegisterResponse> register(RegisterRequest request) async {
    try {
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: request.email.trim(),
        password: request.password.trim(),
      );

      if (result.user != null) {
        final user = User(email: result.user?.email ?? '');
        return RegisterResponse(user: user);
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }

    throw Exception();
  }
}
