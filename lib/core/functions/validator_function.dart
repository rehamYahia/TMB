import 'package:get/get.dart';

validatorInput(String val, int min, int max, String type) {
  if (type == "userName") {
    if (!GetUtils.isUsername(val)) {
      return "invalid username";
    }
  }

  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "invalid email";
    }
  }
  if (type == "phone") {
    if (GetUtils.isPhoneNumber(val)) {
      return "invalid phone number ";
    }
  }
  if (val.isEmpty) {
    return "$type can not be empty";
  }

  if (val.length < min) {
    return "$type should be more than $min";
  }

  if (val.length > max) {
    return "$type should be less than $max";
  }
}
