import 'package:flutter/material.dart';
import 'package:pokedex/features/root/screen/root_screen.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class AppRoutes {
  AppRoutes._();

  static Route routes(RouteSettings settings) {
    final name = settings.name;
    final args = settings.arguments;

    Widget screen;

    switch (name) {
      case RouteKeys.root:
        screen = const RootScreen();
        break;
      default:
        screen = const Scaffold();
    }

    return MaterialPageRoute(
      builder: (_) => screen,
    );
  }
}
