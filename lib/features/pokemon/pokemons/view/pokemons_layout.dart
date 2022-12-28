import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/pokemons/view_model/pokemons_view_model.dart';
import 'package:pokedex/features/pokemon/pokemons/widgets/pokemon_item.dart';
import 'package:provider/provider.dart';

import 'package:pokedex/utils/constants/app_spaces.dart';
import 'package:pokedex/utils/enums/label_type.dart';
import 'package:pokedex/widgets/base_body.dart';
import 'package:pokedex/widgets/poke_label.dart';

class PokemonsLayout extends StatefulWidget {
  const PokemonsLayout({super.key});

  @override
  State<PokemonsLayout> createState() => _PokemonsLayoutState();
}

class _PokemonsLayoutState extends State<PokemonsLayout> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      context.read<PokemonsViewModel>().getPokemons,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseBody(
      allowScroll: false,
      children: [
        const Label(
          value: 'Estos son los pokemones que puedes encontrar',
          type: LabelType.subtitle,
        ),
        const SizedBox(height: AppSpaces.l),
        Expanded(
          child: ListView.builder(
            // shrinkWrap: true,
            itemCount: context.watch<PokemonsViewModel>().pokemons.length,
            itemBuilder: (context, i) {
              final pokemon = context.read<PokemonsViewModel>().pokemons[i];

              return PokemonItem(
                pokemon: pokemon,
                index: i,
                onTap: (_) => context
                    .read<PokemonsViewModel>()
                    .onPokemonTap(pokemon, context),
              );
            },
          ),
        ),
      ],
    );
  }
}
