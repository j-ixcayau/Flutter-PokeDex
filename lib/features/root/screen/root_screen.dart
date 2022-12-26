import 'package:flutter/material.dart';
import 'package:pokedex/features/root/view_model/root_view_model.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RootViewModel(),
      child: const Scaffold(),
    );
  }
}
