import 'package:flutter/cupertino.dart';
import 'package:noon/core/constant/routes/app_routes.dart';
import 'package:noon/view/screens/auth/forget_password.dart';
import 'package:noon/view/screens/auth/login_screen.dart';
import 'package:noon/view/screens/auth/register_screen.dart';
import 'package:noon/view/screens/auth/reset_password.dart';
import 'package:noon/view/screens/auth/signup_verification.dart';
import 'package:noon/view/screens/auth/sucess_reset_password.dart';
import 'package:noon/view/screens/auth/sucess_signup_password.dart';
import 'package:noon/view/screens/auth/verify_code.dart';
import 'package:noon/view/screens/onboarding/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (context) => LoginScreen(),
  AppRoutes.register: (context) => RegisterScreen(),
  AppRoutes.onBoarding: (context) => OnBoardingScreen(),
  AppRoutes.forgetPassword: (context) => ForgetPassword(),
  AppRoutes.verifyCode: (context) => VerifyCode(),
  AppRoutes.resetPassword: (context) => ResetPassword(),
  AppRoutes.sucessResetPassword: (context) => SucessResetPassword(),
  AppRoutes.sucessSignUp: (context) => SucessSignupPassword(),
  AppRoutes.signupVerification: (context) => SignupVerification(),
};
