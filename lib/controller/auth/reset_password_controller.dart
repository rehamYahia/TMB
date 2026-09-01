import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  navigateToLogin();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  navigateToLogin() {
    Go.off(AppRoutes.login);
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
