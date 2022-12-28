import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex/utils/constants/assets_constants.dart';

class LoadNetworkImage extends StatelessWidget {
  const LoadNetworkImage({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  final String url;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) {
        return Lottie.asset(
          AssetsConstants.loaderLottie,
          height: height,
          width: width,
        );
      },
      errorWidget: (context, url, error) {
        return Image.asset(
          AssetsConstants.pokeLogo,
        );
      },
    );
  }
}
