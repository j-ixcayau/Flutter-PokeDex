import 'package:flutter/material.dart';
import 'package:pokedex/features/auth/login/view/login_layout.dart';
import 'package:pokedex/features/auth/login/view_model/login_view_model.dart';
import 'package:pokedex/main/di.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppDI.instance.get<LoginViewModel>(),
      child: const LoginLayout(),
    );
  }
}
