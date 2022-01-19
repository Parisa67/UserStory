import 'package:get/get_utils/src/extensions/string_extensions.dart';

class Validator {
  static bool validateEmail(String email) {
    if (!email.isEmail) {
      return false;
    } else {
      return true;
    }
  }

  static bool validatePassword(String text) {
    if (text.length < 5) return false;
    String pattern = r"[ a-zA-Z]+ [ a-zA-Z]+";
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(text)) {
      return false;
    } else {
      return true;
    }
  }
}
