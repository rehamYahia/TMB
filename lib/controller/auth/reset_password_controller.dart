import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  navigateToSucessReset();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey();

  @override
  navigateToSucessReset() {
    Go.off(AppRoutes.sucessResetPassword);
  }

  @override
  resetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      navigateToSucessReset();
      print("valid reset password");
    } else {
      print("not valid reset password");
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
}
