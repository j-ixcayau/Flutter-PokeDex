import 'package:flutter/material.dart';

import 'package:pokedex/utils/constants/app_colors.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';
import 'package:pokedex/utils/enums/label_type.dart';
import 'package:pokedex/widgets/base_body.dart';
import 'package:pokedex/widgets/poke_label.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({
    super.key,
    required this.onActionTap,
    required this.actionTitle,
    required this.actionButtonText,
    required this.onBackTap,
    required this.children,
  });

  final VoidCallback onActionTap;
  final String actionTitle;
  final String actionButtonText;
  final VoidCallback? onBackTap;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            PokeColors.accent,
            PokeColors.authAccentGradient,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          actions: <Widget>[
            TextButton(
              onPressed: onActionTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    actionTitle,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: AppSpaces.xxs2),
                  Text(
                    actionButtonText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
          leading: onBackTap == null
              ? const SizedBox()
              : IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: onBackTap,
                ),
        ),
        body: Column(
          children: [
            const SizedBox(height: AppSpaces.xl),
            const Label(
              value: 'Pokedex by JIxca',
              type: LabelType.title,
              color: PokeColors.primaryColor,
            ),
            const SizedBox(height: AppSpaces.xxl4),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: PokeColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSpaces.l),
                    topRight: Radius.circular(AppSpaces.l),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(
                  AppSpaces.m,
                  AppSpaces.m,
                  AppSpaces.m,
                  AppSpaces.zero,
                ),
                child: BaseBody(
                  children: children,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
