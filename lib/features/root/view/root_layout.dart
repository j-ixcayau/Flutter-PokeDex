import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import 'package:pokedex/utils/constants/assets_constants.dart';
import 'package:provider/provider.dart';

import '../view_model/root_view_model.dart';

class RootLayout extends StatefulWidget {
  const RootLayout({super.key});

  @override
  State<RootLayout> createState() => _RootLayoutState();
}

class _RootLayoutState extends State<RootLayout> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration.zero,
      () {
        context.read<RootViewModel>().init(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Lottie.asset(
          AssetsConstants.loaderLottie,
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
