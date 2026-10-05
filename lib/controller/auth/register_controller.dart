import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class RegisterController extends GetxController {
  navigateToSignIn();
  signUp();
  navigateToSignupVerification();
}

class RegisterControllerImp extends RegisterController {
  GlobalKey<FormState> formState = GlobalKey();

  @override
  navigateToSignIn() {
    Go.to(AppRoutes.login);
  }

  @override
  signUp() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print("valid register");
      navigateToSignupVerification();
    } else {
      print("not valid register");
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
  navigateToSignupVerification() {
    Go.off(AppRoutes.signupVerification);
    // Go.off(AppRoutes.sucessSignUp);
  }
}
