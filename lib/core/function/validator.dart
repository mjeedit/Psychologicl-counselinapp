import 'package:get/get.dart';

validinput(int min, int max, String type, String val) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not valid username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "not valid email";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone number";
    }
  }

  if (val.length < min) {
    return "less than $min";
  }

    if (val.length > max) {
    return "more than $max";
  }
}
