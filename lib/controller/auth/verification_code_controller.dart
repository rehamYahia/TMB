import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class VerificationCodeController extends GetxController {
  navigateToResetPassword();
  checkOtpCode(String code, String type);
  String? codeVerficationInput(String code, String type);
}

class VerificationCodeControllerImp extends VerificationCodeController {
  @override
  navigateToResetPassword() {
    Go.to(AppRoutes.resetPassword);
  }

  @override
  void onInit() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  String? codeVerficationInput(String code, String type) {
    if (code.length < 5) {
      return "enter the all code that sent";
    }
    if (code.isEmpty) {
      return "enter the code that sent to can do $type";
    }
    return null;
  }

  @override
  checkOtpCode(String code, String type) {
    final error = codeVerficationInput(code, type);
    if (error != null) {
      return;
    }

    print("success verification code");
  }
}
