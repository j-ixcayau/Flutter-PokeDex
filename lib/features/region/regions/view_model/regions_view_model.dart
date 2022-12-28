import 'dart:developer';

import 'package:domain/entities/region.dart';
import 'package:domain/repositories/region/get_regions_repository.dart';
import 'package:flutter/material.dart';

class RegionsViewModel extends ChangeNotifier {
  RegionsViewModel({
    required GetRegionsRepository repository,
  }) : _repository = repository;

  final GetRegionsRepository _repository;

  List<Region> regions = [];

  void getRegions() async {
    final result = await _repository.getRegions();

    result.fold(
      (l) {
        log(l.toString());
      },
      (r) {
        regions = r.results;
      },
    );
    notifyListeners();
  }

  void onRegionTap(Region region, BuildContext context) {
    //
  }
}
