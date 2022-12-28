import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/constants/app_spaces.dart';

enum LabelType { title, subtitle, normal }

extension LabelTypeExt on LabelType {
  FontWeight get fontWeight {
    switch (this) {
      case LabelType.title:
        return FontWeight.bold;
      case LabelType.subtitle:
        return FontWeight.w600;
      case LabelType.normal:
        return FontWeight.normal;
    }
  }

  double get fontSize {
    switch (this) {
      case LabelType.title:
        return AppSpaces.xl;
      case LabelType.subtitle:
        return AppSpaces.l;
      case LabelType.normal:
        return AppSpaces.s2;
    }
  }
}
