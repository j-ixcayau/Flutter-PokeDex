import 'package:flutter/material.dart';
import 'package:pokedex/features/auth/widgets/auth_body.dart';
import 'package:pokedex/features/auth/widgets/social_button.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';
import 'package:pokedex/utils/constants/assets_constants.dart';
import 'package:pokedex/utils/enums/input_type.dart';
import 'package:pokedex/utils/enums/label_type.dart';
import 'package:pokedex/widgets/poke_button.dart';
import 'package:pokedex/widgets/poke_input.dart';
import 'package:pokedex/widgets/poke_label.dart';
import 'package:provider/provider.dart';

import 'package:pokedex/features/auth/register/view_model/register_view_model.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterViewModel>().formKey,
      autovalidateMode: AutovalidateMode.always,
      child: AuthBody(
        actionTitle: '¿Ya tienes una cuenta?',
        actionButtonText: 'Inicia sesión',
        onActionTap: () => context.read<RegisterViewModel>().returnToLogin(context),
        onBackTap: () => context.read<RegisterViewModel>().returnToLogin(context),
        children: [
          const SizedBox(height: AppSpaces.l),
          const Label(
            value: 'Registrarse',
            type: LabelType.title,
          ),
          const SizedBox(height: AppSpaces.s),
          const Label(
            value: 'Te damos la bienvenida! :D',
            type: LabelType.subtitle,
          ),
          const SizedBox(height: AppSpaces.xl),
          PokeInput(
            controller: context.read<RegisterViewModel>().emailController,
            title: 'Correo',
            type: InputType.email,
          ),
          const SizedBox(height: AppSpaces.s),
          PokeInput(
            controller: context.read<RegisterViewModel>().passwordController,
            title: 'Contraseña',
            type: InputType.password,
          ),
          const SizedBox(height: AppSpaces.m),
          PokeButton(
            title: 'Registrarse',
            onTap: () => context.read<RegisterViewModel>().register(context),
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
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: AppSpaces.m),
        ],
      ),
    );
  }
}
