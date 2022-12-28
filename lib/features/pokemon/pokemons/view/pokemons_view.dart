import 'package:flutter/material.dart';
import 'package:pokedex/features/pokemon/pokemons/view/pokemons_layout.dart';
import 'package:pokedex/features/pokemon/pokemons/view_model/pokemons_view_model.dart';
import 'package:pokedex/main/di.dart';
import 'package:pokedex/widgets/poke_appbar.dart';
import 'package:provider/provider.dart';

class PokemonsView extends StatelessWidget {
  const PokemonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppDI.instance<PokemonsViewModel>(),
      child: Scaffold(
        appBar: PokeAppbar(
          onBackTap: () => Navigator.pop(context),
          title: 'Pokemones',
        ),
        body: const PokemonsLayout(),
      ),
    );
  }
}
