import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_colors.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.assetPath,
    required this.onTap,
  });

  final String assetPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      radius: AppSpaces.xxs,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: PokeColors.accent,
            width: AppSpaces.xxs2,
          ),
          borderRadius: BorderRadius.circular(
            AppSpaces.xxs,
          ),
        ),
        padding: const EdgeInsets.all(AppSpaces.xs),
        child: Image(
          image: AssetImage(assetPath),
          fit: BoxFit.contain,
          width: AppSpaces.xxl,
          height: AppSpaces.xxl,
        ),
      ),
    );
  }
}
