import 'package:flutter/material.dart';
import 'package:pokedex/features/region/regions/view/regions_layout.dart';
import 'package:pokedex/features/region/regions/view_model/regions_view_model.dart';
import 'package:pokedex/main/di.dart';
import 'package:pokedex/widgets/poke_appbar.dart';
import 'package:provider/provider.dart';

class RegionsView extends StatelessWidget {
  const RegionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppDI.instance<RegionsViewModel>(),
      child: Scaffold(
        appBar: PokeAppbar(
          onBackTap: () => Navigator.pop(context),
          title: 'Regiones',
        ),
        body: const RegionsLayout(),
      ),
    );
  }
}
