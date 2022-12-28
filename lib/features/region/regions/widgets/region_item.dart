import 'package:domain/entities/region.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/utils/extensions/string_extensions.dart';
import 'package:pokedex/widgets/poke_label.dart';

class RegionItem extends StatelessWidget {
  const RegionItem({
    super.key,
    required this.region,
    required this.onTap,
  });

  final Region region;
  final void Function(Region) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        title: Label(
          value: region.name.capitalized,
        ),
        onTap: () => onTap(region),
      ),
    );
  }
}
