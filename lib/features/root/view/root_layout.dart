import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import 'package:pokedex/utils/constants/assets_constants.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Lottie.asset(
          AssetsConstants.loader,
          height: 250,
          width: 250,
        ),
      ),
    );
  }
}
