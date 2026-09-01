import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/forget_password_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../widgets/auth/custom_text_form_field.dart';
import '../../widgets/const/custom_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp forgetPasswordControllerImp = Get.find();
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "forget_password".tr,
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
              Center(
                child: Text(
                  "welcome_back".tr,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  "forget_password_welcome".tr,
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

              SizedBox(height: 10),

              CustomButton(
                "check".tr,
                150,
                40,
                AppColors.primaryColor,
                AppColors.white,
                12,
                () {
                  forgetPasswordControllerImp.navigateToVerification();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
