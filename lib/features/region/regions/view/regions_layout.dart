import 'package:flutter/material.dart';
import 'package:pokedex/features/region/regions/view_model/regions_view_model.dart';
import 'package:pokedex/features/region/regions/widgets/region_item.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';
import 'package:pokedex/widgets/base_body.dart';
import 'package:pokedex/widgets/poke_label.dart';

import 'package:pokedex/utils/enums/label_type.dart';
import 'package:provider/provider.dart';

class RegionsLayout extends StatefulWidget {
  const RegionsLayout({super.key});

  @override
  State<RegionsLayout> createState() => _RegionsLayoutState();
}

class _RegionsLayoutState extends State<RegionsLayout> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      context.read<RegionsViewModel>().init,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseBody(
      children: [
        const Label(
          value: 'Estas son las regiones que tiene todo el mundo Pokemon',
          type: LabelType.subtitle,
        ),
        const SizedBox(height: AppSpaces.l),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: context.watch<RegionsViewModel>().regions.length,
          itemBuilder: (context, i) {
            final region = context.read<RegionsViewModel>().regions[i];

            return RegionItem(
              region: region,
              onTap: (_) =>
                  context.read<RegionsViewModel>().onRegionTap(region, context),
            );
          },
        ),
      ],
    );
  }
}
