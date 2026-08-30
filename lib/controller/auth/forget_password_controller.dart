import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class ForgetPasswordController extends GetxController {
  navigateToVerification();
  checkEmail();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  @override
  checkEmail() {}

  @override
  navigateToVerification() {
    Go.to(AppRoutes.verifyCode);
  }

  @override
  void onInit() {}

  @override
  void dispose() {}
}
