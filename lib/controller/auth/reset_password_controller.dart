import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  navigateToSucessReset();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  @override
  navigateToSucessReset() {
    Go.off(AppRoutes.sucessResetPassword);
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
