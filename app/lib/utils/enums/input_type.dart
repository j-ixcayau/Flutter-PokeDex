import 'package:flutter/widgets.dart';
import 'package:pokedex/utils/helpers/string_validations.dart';

enum InputType {
  text,
  email,
  password,
}

extension InputTypeExt on InputType {
  TextInputType get keyboardType {
    switch (this) {
      case InputType.text:
        return TextInputType.text;
      case InputType.email:
        return TextInputType.emailAddress;
      case InputType.password:
        return TextInputType.visiblePassword;
    }
  }

  String? validText(String? value) {
    if (value == null) return null;
    if (value.trim().isEmpty) return null;

    switch (this) {
      case InputType.text:
        return StringValidations.validText(value) ? null : '';
      case InputType.email:
        return StringValidations.validEmail(value) ? null : '';
      case InputType.password:
        return StringValidations.validPassword(value) ? null : '';
    }
  }
}
