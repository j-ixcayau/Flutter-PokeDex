import 'package:flutter/material.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class HomeViewModel extends ChangeNotifier {
  void navigateToRegion(BuildContext context) {
    Navigator.pushNamed(context, RouteKeys.regions);
  }
}
