import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';

class BaseBody extends StatelessWidget {
  const BaseBody({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.m,
          vertical: AppSpaces.xs2,
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
