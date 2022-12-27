import 'dart:developer';

import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/repositories/auth/login_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class LoginViewModel extends ChangeNotifier {
  LoginViewModel({
    required LoginRepository repository,
  }) : _repository = repository;

  final LoginRepository _repository;

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) async {
    if (formKey.currentState?.validate() != true) {
      return;
    }

    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    final request = LoginRequest(email: email, password: password);
    final result = await _repository.login(request);

    result.fold(
      (l) {
        log(l.toString());
      },
      (r) {
        log(r.toString());
      },
    );
  }

  void navigateToRegister(BuildContext context) {
    Navigator.pushNamed(context, RouteKeys.register);
  }
}
