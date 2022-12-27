import 'package:pokedex/utils/helpers/regex.dart';

class StringValidations {
  static bool validText(String value) {
    return value.trim().isNotEmpty;
  }

  static bool validEmail(String value) {
    return PokeRegexs.email.hasMatch(value.trim());
  }

  static bool validPassword(String value) {
    return PokeRegexs.password.hasMatch(value.trim());
  }
}
