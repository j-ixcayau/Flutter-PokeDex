import 'dart:developer';

import 'package:domain/network/auth/register/register_request.dart';
import 'package:domain/repositories/auth/auth_repository.dart';
import 'package:domain/repositories/auth/social_auth_repository.dart';

import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class RegisterViewModel extends ChangeNotifier {
  RegisterViewModel({
    required AuthRepository repository,
    required SocialAuthRepository socialRepository,
  })  : _repository = repository,
        _socialRepository = socialRepository;

  final AuthRepository _repository;
  final SocialAuthRepository _socialRepository;

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
        _navigateToHome(context);
      },
    );
  }

  void googleAuth(BuildContext context) async {
    final result = await _socialRepository.googleAuth();

    result.fold(
      (l) {
        log(l.toString());
      },
      (r) {
        if (r == null) return;

        _navigateToHome(context);
      },
    );
  }

  void returnToLogin(BuildContext context) {
    Navigator.pop(context);
  }

  void _navigateToHome(BuildContext context) async {
    Navigator.pop(context);
    Navigator.pushReplacementNamed(context, RouteKeys.home);
  }
}
