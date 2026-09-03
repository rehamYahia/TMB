import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class LoginController extends GetxController {
  navigateToSignUp();
  navigateToForgetPassword();
  signIn();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey();
  @override
  navigateToSignUp() {
    Go.to(AppRoutes.register);
  }

  @override
  signIn() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("validate");
    } else {
      print("not valid ");
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  navigateToForgetPassword() {
    Go.to(AppRoutes.forgetPassword);
  }
}
