import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/core/constant/routes/app_routes.dart';

import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/routes/navigate.dart';
import '../../../data/datasource/static/static.dart';
import '../../widgets/const/custom_button.dart';
import '../../widgets/onboarding/custom_dots.dart';
import '../../widgets/onboarding/custom_slider.dart';
import '../../widgets/onboarding/custom_text_button.dart';

class OnBoardingScreen extends GetView<OnboardingControllerImp> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // OnboardingControllerImp onboardingControllerImp = Get.find();

    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: CustomSliderOnBoarding()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomOnboardingDots(
                    listLength: onBoardingList.length,
                    dotsColor: AppColors.primaryColor,
                  ),
                  SizedBox(height: 20),
                  GetBuilder<OnboardingControllerImp>(
                    builder: (controller) =>
                        controller.currentPage == onBoardingList.length - 1
                        ? CustomButton(
                            "Go to login",
                            200,
                            40,
                            AppColors.black,
                            AppColors.white,
                            8,
                            () {
                              Go.to(AppRoutes.login);
                            },
                          )
                        : CustomButton(
                            "continue".tr,
                            200,
                            40,
                            AppColors.primaryColor,
                            AppColors.white,
                            8,
                            () {
                              controller.next();
                            },
                          ),
                  ),

                  GetBuilder<OnboardingControllerImp>(
                    builder: (controller) =>
                        controller.currentPage == onBoardingList.length - 1
                        ? SizedBox()
                        : CustomTextButton(
                            text: "skip".tr,
                            textColor: Colors.black,
                            fontSize: 16,
                            onTap: () {
                              Go.to(AppRoutes.login);
                            },
                          ),

                    // CustomTextButton("skip".tr, Colors.black, 16, () {
                    //   Go.to(AppRoutes.login);
                    // }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
