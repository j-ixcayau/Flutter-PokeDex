import 'dart:developer';

import 'package:domain/entities/user.dart';
import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/network/auth/login/login_response.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;

abstract class LoginDatasource {
  Future<LoginResponse> login(LoginRequest request);
}

class LoginDatasourceImpl extends LoginDatasource {
  @override
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: request.email.trim(),
        password: request.password.trim(),
      );

      if (result.user != null) {
        final user = User(email: result.user?.email ?? '');
        return LoginResponse(user: user);
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }

    throw Exception();
  }
}
