import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      primarySwatch: _color,
      primaryColor: PokeColors.primaryColor,
    );
  }

  static MaterialColor get _color {
    Map<int, Color> color = {
      50: PokeColors.primaryColor.withOpacity(.1),
      100: PokeColors.primaryColor.withOpacity(.2),
      200: PokeColors.primaryColor.withOpacity(.3),
      300: PokeColors.primaryColor.withOpacity(.4),
      400: PokeColors.primaryColor.withOpacity(.5),
      500: PokeColors.primaryColor.withOpacity(.6),
      600: PokeColors.primaryColor.withOpacity(.7),
      700: PokeColors.primaryColor.withOpacity(.8),
      800: PokeColors.primaryColor.withOpacity(.9),
      900: PokeColors.primaryColor.withOpacity(1),
    };

    return MaterialColor(0xFF8154DF, color);
  }
}
