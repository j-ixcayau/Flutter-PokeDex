import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pokedex/utils/constants/app_spaces.dart';
import 'package:pokedex/utils/constants/assets_constants.dart';
import 'package:pokedex/utils/enums/input_type.dart';
import 'package:pokedex/utils/enums/label_type.dart';
import 'package:pokedex/widgets/poke_button.dart';
import 'package:pokedex/widgets/poke_input.dart';
import 'package:pokedex/widgets/poke_label.dart';
import 'package:pokedex/features/auth/widgets/auth_body.dart';
import 'package:pokedex/features/auth/widgets/social_button.dart';
import 'package:pokedex/features/auth/login/view_model/login_view_model.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginViewModel>().formKey,
      autovalidateMode: AutovalidateMode.always,
      child: AuthBody(
        actionTitle: '¿Aún no tienes una cuenta?',
        actionButtonText: 'Registrate',
        onActionTap: () =>
            context.read<LoginViewModel>().navigateToRegister(context),
        onBackTap: null,
        children: [
          const SizedBox(height: AppSpaces.l),
          const Label(
            value: 'Iniciar Sesión',
            type: LabelType.title,
          ),
          const SizedBox(height: AppSpaces.s),
          const Label(
            value: 'Ingresa tus datos abajo',
            type: LabelType.subtitle,
          ),
          const SizedBox(height: AppSpaces.xl),
          PokeInput(
            controller: context.read<LoginViewModel>().emailController,
            title: 'Correo',
            type: InputType.email,
          ),
          const SizedBox(height: AppSpaces.s),
          PokeInput(
            controller: context.read<LoginViewModel>().passwordController,
            title: 'Contraseña',
            type: InputType.password,
          ),
          const SizedBox(height: AppSpaces.m),
          PokeButton(
            title: 'Iniciar sesión',
            onTap: () => context.read<LoginViewModel>().login(context),
          ),
          const SizedBox(height: AppSpaces.m),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                assetPath: AssetsConstants.facebookLogo,
                onTap: () {},
              ),
              const SizedBox(width: AppSpaces.m),
              SocialButton(
                assetPath: AssetsConstants.googleLogo,
                onTap: () => context.read<LoginViewModel>().googleAuth(context),
              ),
            ],
          ),
          const SizedBox(height: AppSpaces.m),
        ],
      ),
    );
  }
}
