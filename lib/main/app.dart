import 'package:flutter/material.dart';
import 'package:pokedex/main/theme.dart';
import 'package:pokedex/utils/routes/app_routes.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class PokeDexApp extends StatelessWidget {
  const PokeDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeDex',
      theme: AppTheme.theme,
      onGenerateRoute: AppRoutes.routes,
      initialRoute: RouteKeys.root,
    );
  }
}
