import 'package:domain/entities/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/utils/enums/label_type.dart';
import 'package:pokedex/utils/extensions/string_extensions.dart';
import 'package:pokedex/widgets/load_network_image.dart';

import 'package:pokedex/widgets/poke_label.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({
    super.key,
    required this.pokemon,
    required this.index,
    required this.onTap,
  });

  final Pokemon pokemon;
  final int index;
  final void Function(Pokemon) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        leading: LoadNetworkImage(
          url: pokemon.imageUrl,
          width: 48.0,
          height: 48.0,
        ),
        title: Label(
          value: pokemon.name.capitalized,
          type: LabelType.subtitle,
        ),
        trailing: Label(
          value: '#${index + 1}',
        ),
        onTap: () => onTap(pokemon),
      ),
    );
  }
}
