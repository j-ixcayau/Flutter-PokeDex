import 'package:flutter/material.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';

class BaseBody extends StatelessWidget {
  const BaseBody({
    super.key,
    required this.children,
    this.allowScroll = true,
  });

  final List<Widget> children;
  final bool allowScroll;

  @override
  Widget build(BuildContext context) {
    final content = Padding(
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
    );

    return allowScroll
        ? SingleChildScrollView(
            child: content,
          )
        : content;
  }
}
