import 'dart:developer';

import 'package:domain/repositories/auth/auth_repository.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class RootViewModel extends ChangeNotifier {
  RootViewModel({
    required AuthRepository repository,
  }) : _repository = repository;

  final AuthRepository _repository;

  void init(BuildContext context) async {
    final result = await _repository.isUserLogged();

    result.fold(
      (l) {
        log(l.toString());
        Navigator.pushReplacementNamed(context, RouteKeys.login);
      },
      (r) {
        if (r) {
          Navigator.pushReplacementNamed(context, RouteKeys.home);
        } else {
          Navigator.pushReplacementNamed(context, RouteKeys.login);
        }
      },
    );
  }
}
