import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/auth/forget_password_controller.dart';
import '../../controller/auth/login_controller.dart';
import '../../controller/auth/register_controller.dart';
import '../../controller/auth/reset_password_controller.dart';
import '../../controller/auth/signup_verification.dart';
import '../../controller/auth/verification_code_controller.dart';
import '../../controller/onboarding/onboarding_controller.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferance;

  Future<SettingServices> init() async {
    sharedPreferance = await SharedPreferences.getInstance();
    return this;
  }
}

Future serviceInitialize() async {
  await Get.putAsync(() => SettingServices().init());
  initializeDependacies();
}

initializeDependacies() {
  Get.put(LoginControllerImp());
  Get.put(ForgetPasswordControllerImp());
  Get.put(RegisterControllerImp());
  Get.put(ResetPasswordControllerImp());
  Get.put(VerificationCodeControllerImp());
  Get.put(OnboardingControllerImp());
  Get.put(SignupVerificationControllerImp());
}
