import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../controller/auth/reset_password_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../widgets/auth/custom_text_form_field.dart';
import '../../widgets/const/custom_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp resetPasswordControllerImp = Get.find();
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "reset_password".tr,
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
              // Center(
              //   child: Text(
              //     "welcome_back".tr,
              //     style: Theme.of(context).textTheme.headlineLarge,
              //   ),
              // ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  "reset_password_welcome".tr,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: AppColors.light_grey),
                ),
              ),

              SizedBox(height: 40),
              customTextFormField(
                emailController,
                "enter_your_password".tr,
                "password".tr,
                Icons.remove_red_eye_outlined,
                (val) {},
              ),
              SizedBox(height: 10),
              customTextFormField(
                emailController,
                "confirm_password".tr,
                "confirm_password".tr,
                Icons.remove_red_eye_outlined,
                (val) {},
              ),
              SizedBox(height: 10),

              CustomButton(
                "reset_password".tr,
                150,
                40,
                AppColors.primaryColor,
                AppColors.white,
                12,
                () {
                  resetPasswordControllerImp.navigateToSucessReset();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
