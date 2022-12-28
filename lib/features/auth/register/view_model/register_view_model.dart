import 'dart:developer';

import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/repositories/auth/auth_repository.dart';

import 'package:flutter/widgets.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterViewModel({
    required AuthRepository repository,
  }) : _repository = repository;

  final AuthRepository _repository;

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void register(BuildContext context) async {
    if (formKey.currentState?.validate() != true) {
      return;
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    final request = RegisterRequest(email: email, password: password);
    final result = await _repository.register(request);

    result.fold(
      (l) {
        log(l.toString());
      },
      (r) {
        log(r.toString());
      },
    );
  }

  void returnToLogin(BuildContext context) {
    Navigator.pop(context);
  }
}
