import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/routes/route_keys.dart';

class RootViewModel extends ChangeNotifier {
  void init(BuildContext context) async {
    log('Navigating');
    Navigator.pushReplacementNamed(context, RouteKeys.login);
  }
}
