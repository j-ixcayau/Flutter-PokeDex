import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';

class PokeButton extends StatelessWidget {
  const PokeButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpaces.xxl3,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          title,
        ),
      ),
    );
  }
}
