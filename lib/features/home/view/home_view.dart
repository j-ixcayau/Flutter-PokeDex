import 'package:flutter/material.dart';
import 'package:pokedex/features/home/view/home_layout.dart';
import 'package:pokedex/features/home/view_model/home_view_model.dart';
import 'package:pokedex/main/di.dart';
import 'package:pokedex/widgets/poke_appbar.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppDI.instance<HomeViewModel>(),
      child: const Scaffold(
        appBar: PokeAppbar(
          onBackTap: null,
          title: 'Inicio',
        ),
        body: HomeLayout(),
      ),
    );
  }
}
