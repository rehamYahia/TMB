import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class VerificationCodeController extends GetxController {
  navigateToResetPassword();
  checkOtpCode();
}

class VerificationCodeControllerImp extends VerificationCodeController {
  @override
  checkOtpCode() {}

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
}
