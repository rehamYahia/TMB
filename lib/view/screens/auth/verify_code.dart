import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth/verification_code_controller.dart';
import '../../../core/constant/app_color.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerificationCodeControllerImp verificationCodeControllerImp = Get.find();
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "verification_code".tr,
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
                  String? error = verificationCodeControllerImp
                      .codeVerficationInput(verificationCode, "reset password");

                  if (error != null) {
                    Get.snackbar("Error", error);
                  } else {
                    Get.snackbar("sucess", "");
                    verificationCodeControllerImp.checkOtpCode(
                      verificationCode,
                      "reset password",
                    );
                    verificationCodeControllerImp.navigateToResetPassword();
                  }
                  // String? nessage = verificationCodeControllerImp
                  //     .codeVerficationInput(verificationCode, "reset password");
                  // if (nessage!.isNotEmpty) {
                  //   Get.snackbar("Error", "Please enter the complete OTP");
                  // } else {
                  //   Get.snackbar("sucess", "sucess");
                  //   verificationCodeControllerImp.checkOtpCode(
                  //     verificationCode,
                  //     "reset password",
                  //   );
                  // }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
