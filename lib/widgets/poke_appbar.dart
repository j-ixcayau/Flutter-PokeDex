import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_colors.dart';

class PokeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PokeAppbar({
    super.key,
    required this.onBackTap,
    required this.title,
  });

  final VoidCallback? onBackTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: onBackTap != null
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: onBackTap,
              color: Colors.white,
            )
          : null,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        ),
      ),
      elevation: 0.0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              PokeColors.accent,
              PokeColors.authAccentGradient,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
