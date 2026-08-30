import 'package:get/state_manager.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class RegisterController extends GetxController {
  navigateToSignIn();
  signUp();
}

class RegisterControllerImp extends RegisterController {
  @override
  navigateToSignIn() {
    Go.to(AppRoutes.login);
  }

  @override
  signUp() {}

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
