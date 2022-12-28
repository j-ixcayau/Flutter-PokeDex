import 'package:flutter/material.dart';
import 'package:pokedex/features/home/view_model/home_view_model.dart';
import 'package:pokedex/features/home/widgets/home_category_card.dart';
import 'package:pokedex/utils/constants/app_colors.dart';
import 'package:pokedex/widgets/base_body.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseBody(
      allowScroll: false,
      children: [
        Row(
          children: [
            HomeCategoryCard(
              title: 'Regiones',
              color: PokeColors.regionCard,
              onTap: () =>
                  context.read<HomeViewModel>().navigateToRegion(context),
            ),
            HomeCategoryCard(
              title: 'Pokemones',
              color: PokeColors.pokemonCard,
              onTap: () =>
                  context.read<HomeViewModel>().navigateToPokemons(context),
            )
          ],
        ),
        const Spacer(),
        Row(
          children: [
            const Spacer(flex: 1),
            HomeCategoryCard(
              title: 'Cerrar sesión',
              color: PokeColors.logOutCard,
              onTap: () => context.read<HomeViewModel>().logout(context),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ],
    );
  }
}
