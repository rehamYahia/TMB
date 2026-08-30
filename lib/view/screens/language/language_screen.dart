import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/routes/app_routes.dart';
import '../../../core/constant/routes/navigate.dart';
import '../../../core/localization/controller/lang_controller.dart';
import '../../widgets/const/custom_button.dart';

class LanguageScreen extends GetView<LangController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "choose_language".tr,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              "arabic".tr,
              200,
              40,
              AppColors.primaryColor,
              AppColors.white,
              3,
              () {
                controller.changeLanguage("ar");
                Go.to(AppRoutes.onBoarding);
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              "english".tr,
              200,
              40,
              AppColors.primaryColor,
              AppColors.white,
              3,
              () {
                controller.changeLanguage("en");
                Go.to(AppRoutes.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
