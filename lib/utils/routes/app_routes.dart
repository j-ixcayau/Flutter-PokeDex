import 'package:flutter/material.dart';
import 'package:pokedex/features/auth/login/view/login_view.dart';
import 'package:pokedex/features/home/view/home_view.dart';
import 'package:pokedex/features/root/view/root_view.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class AppRoutes {
  AppRoutes._();

  static Route routes(RouteSettings settings) {
    final name = settings.name;
    final args = settings.arguments;

    Widget screen;

    switch (name) {
      case RouteKeys.root:
        screen = const RootView();
        break;
      case RouteKeys.login:
        screen = const LoginView();
        break;
      case RouteKeys.home:
        screen = const HomeView();
        break;
      default:
        screen = const Scaffold();
    }

    return MaterialPageRoute(
      builder: (_) => screen,
    );
  }
}
