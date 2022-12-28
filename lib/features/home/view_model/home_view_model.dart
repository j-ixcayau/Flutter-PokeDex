import 'package:domain/repositories/auth/auth_repository.dart';
import 'package:domain/repositories/auth/social_auth_repository.dart';
import 'package:flutter/material.dart';

import 'package:pokedex/utils/routes/route_keys.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required SocialAuthRepository socialRepository,
    required AuthRepository authRepository,
  })  : _socialRepository = socialRepository,
        _authRepository = authRepository;

  final SocialAuthRepository _socialRepository;
  final AuthRepository _authRepository;

  void navigateToRegion(BuildContext context) {
    Navigator.pushNamed(context, RouteKeys.regions);
  }

  void navigateToPokemons(BuildContext context) {
    Navigator.pushNamed(context, RouteKeys.pokemons);
  }

  void logout(BuildContext context) async {
    await _socialRepository.logout();
    await _authRepository.logout();

    Navigator.pushReplacementNamed(context, RouteKeys.login);
  }
}
