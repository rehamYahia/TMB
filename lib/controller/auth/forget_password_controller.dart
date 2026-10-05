import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class ForgetPasswordController extends GetxController {
  navigateToVerification();
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formState = GlobalKey();
  @override
  checkEmail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid forgetpassword");
      navigateToVerification();
    } else {
      print("not valid forgetpassword");
    }
  }

  @override
  navigateToVerification() {
    Go.off(AppRoutes.verifyCode);
  }

  @override
  void onInit() {}

  @override
  void dispose() {}
}
