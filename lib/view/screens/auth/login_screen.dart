import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/controller/auth/login_controller.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/services/setting_services.dart';
import '../../widgets/auth/custom_auth_logo.dart';
import '../../widgets/auth/custom_text_form_field.dart';
import '../../widgets/const/custom_button.dart';
import '../../widgets/onboarding/custom_text_button.dart';

class LoginScreen extends GetView<SettingServices> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    String? appLanguage = controller.sharedPreferance.getString("lang");
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "signin".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(color: AppColors.light_grey),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              // SizedBox(height: 20),
              CustomAuthLogo(),
              Center(
                child: Text(
                  "welcome_back".tr,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),

              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  "signin_welcome".tr,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: AppColors.light_grey),
                ),
              ),

              SizedBox(height: 40),
              customTextFormField(
                emailController,
                "enter_your_email".tr,
                "email".tr,
                Icons.email_outlined,
              ),
              customTextFormField(
                emailController,
                "enter_your_password".tr,
                "password".tr,
                Icons.remove_red_eye_outlined,
              ),

              GetBuilder<LoginController>(
                builder: (loginController) => Align(
                  alignment: appLanguage == "en" || appLanguage == null
                      ? Alignment.topLeft
                      : Alignment.topRight,
                  child: CustomTextButton(
                    text: "forget_password".tr,
                    textColor: AppColors.grey,
                    fontSize: 14,
                    onTap: () {
                      loginController.navigateToForgetPassword();
                    },
                  ),
                ),
              ),

              CustomButton(
                "signin".tr,
                300,
                50,
                AppColors.primaryColor,
                AppColors.white,
                12,
                () {},
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "not_have_account".tr,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),

                    GetBuilder<LoginControllerImp>(
                      builder: (loginController) => CustomTextButton(
                        text: "signup".tr,
                        textColor: AppColors.primaryColor,
                        fontSize: 14,
                        onTap: () {
                          loginController.navigateToSignUp();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
