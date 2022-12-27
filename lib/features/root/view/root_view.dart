import 'package:flutter/material.dart';
import 'package:pokedex/features/root/view/root_layout.dart';
import 'package:pokedex/features/root/view_model/root_view_model.dart';
import 'package:pokedex/main/di.dart';
import 'package:provider/provider.dart';

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppDI.instance.get<RootViewModel>(),
      child: const Scaffold(
        body: RootLayout(),
      ),
    );
  }
}
