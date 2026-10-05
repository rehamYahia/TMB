import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/controller/auth/register_controller.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/functions/validator_function.dart';
import '../../../core/services/setting_services.dart';
import '../../widgets/auth/custom_auth_logo.dart';
import '../../widgets/auth/custom_text_form_field.dart';
import '../../widgets/const/custom_button.dart';
import '../../widgets/onboarding/custom_text_button.dart';

class RegisterScreen extends GetView<SettingServices> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RegisterControllerImp registerControllerImp = Get.find();
    TextEditingController userNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "signup".tr,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(color: AppColors.light_grey),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: registerControllerImp.formState,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  CustomAuthLogo(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      textAlign: TextAlign.center,
                      "signin_welcome".tr,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.light_grey,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  customTextFormField(
                    userNameController,
                    "enter_your_name".tr,
                    "username".tr,
                    Icons.person_2_outlined,
                    (val) {
                      return validatorInput(val!, 5, 50, "userName");
                    },
                  ),
                  SizedBox(height: 10),
                  customTextFormField(
                    emailController,
                    "enter_your_email".tr,
                    "email".tr,
                    Icons.email_outlined,
                    (val) {
                      return validatorInput(val!, 5, 100, "email");
                    },
                  ),
                  SizedBox(height: 10),
                  // customTextFormField(
                  //   phoneController,
                  //   "phone_number".tr,
                  //   "enter_phone_number".tr,
                  //   Icons.phone,
                  //   (val) {
                  //     return validatorInput(val!, 4, 100, "phone");
                  //   },
                  // ),
                  // SizedBox(height: 10),
                  customTextFormField(
                    passwordController,
                    "enter_your_password".tr,
                    "password".tr,
                    Icons.remove_red_eye_outlined,
                    (val) {
                      return validatorInput(val!, 4, 30, "password");
                    },
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    "signup".tr,
                    300,
                    50,
                    AppColors.primaryColor,
                    AppColors.white,
                    12,
                    () {
                      registerControllerImp.signUp();
                    },
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "not_have_account".tr,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        CustomTextButton(
                          text: "signin".tr,
                          textColor: AppColors.primaryColor,
                          fontSize: 14,
                          onTap: () {
                            registerControllerImp.navigateToSignIn();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
