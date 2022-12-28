import 'package:flutter/material.dart';
import 'package:pokedex/features/auth/login/view/login_view.dart';
import 'package:pokedex/features/auth/register/view/register_view.dart';
import 'package:pokedex/features/home/view/home_view.dart';
import 'package:pokedex/features/pokemon/pokemons/view/pokemons_view.dart';
import 'package:pokedex/features/region/regions/view/regions_view.dart';
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
      case RouteKeys.register:
        screen = const RegisterView();
        break;
      case RouteKeys.home:
        screen = const HomeView();
        break;
      case RouteKeys.regions:
        screen = const RegionsView();
        break;
      case RouteKeys.pokemons:
        screen = const PokemonsView();
        break;
      default:
        screen = const Scaffold();
    }

    return MaterialPageRoute(
      builder: (_) => screen,
    );
  }
}
