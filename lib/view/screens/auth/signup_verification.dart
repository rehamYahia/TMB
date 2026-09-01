import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../controller/auth/signup_verification.dart';
import '../../../core/constant/app_color.dart';

class SignupVerification extends StatelessWidget {
  const SignupVerification({super.key});

  @override
  Widget build(BuildContext context) {
    SignupVerificationControllerImp signupVerificationControllerImp =
        Get.find();
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "signup_verification".tr,
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
                  "check_code".tr,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  textAlign: TextAlign.center,
                  "verification_welcome".tr,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: AppColors.light_grey),
                ),
              ),

              SizedBox(height: 40),
              OtpTextField(
                cursorColor: AppColors.grey,
                disabledBorderColor: AppColors.light_grey,
                enabledBorderColor: AppColors.light_grey,
                fillColor: AppColors.primaryColor,
                focusedBorderColor: AppColors.primaryColor,

                fieldWidth: 50,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: AppColors.primaryColor,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {
                  // verificationCodeControllerImp.navigateToResetPassword();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
