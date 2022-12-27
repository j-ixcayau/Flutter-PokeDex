import 'package:flutter/material.dart';
import 'package:pokedex/features/auth/login/view/login_layout.dart';
import 'package:pokedex/features/auth/login/view_model/login_view_model.dart';
import 'package:pokedex/features/auth/register/view/register_layout.dart';
import 'package:pokedex/features/auth/register/view_model/register_view_model.dart';
import 'package:pokedex/main/di.dart';
import 'package:provider/provider.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppDI.instance.get<RegisterViewModel>(),
      child: const RegisterLayout(),
    );
  }
}
