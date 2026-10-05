import 'package:get/get.dart';

validatorInput(String val, int min, int max, String type) {
  if (val.isEmpty) {
    return "$type can not be empty";
  }

  if (val.length < min) {
    return "$type should be more than $min";
  }

  if (val.length > max) {
    return "$type should be less than $max";
  }

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
    if (GetUtils.isEmail(val)) {
      return "invalid phone number ";
    }
  }
}

codeVerficationInput(String code, String type) {
  if (code.length < 5) {
    return "enter the all code that sent";
  }
  if (code.isEmpty) {
    return "enter the code that sent to can do $type";
  }
}

resetPasswordInput(String password, String confirmPassword) {
  if (password != confirmPassword) {
    return "password must be like the same confirm password value";
  }
}
