import 'dart:developer';

import 'package:domain/network/auth/login/login_request.dart';
import 'package:domain/repositories/auth/auth_repository.dart';
import 'package:domain/repositories/auth/social_auth_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class LoginViewModel extends ChangeNotifier {
  LoginViewModel({
    required AuthRepository repository,
    required SocialAuthRepository socialRepository,
  })  : _repository = repository,
        _socialRepository = socialRepository;

  final AuthRepository _repository;
  final SocialAuthRepository _socialRepository;

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

  void googleAuth(BuildContext context) async {
    final result = await _socialRepository.googleAuth();

    result.fold(
      (l) {
        log(l.toString());
      },
      (r) {
        log(r.toString());
      },
    );
  }
}
