import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (val) {
        print(val);
        controller.onPageChanged(val);
      },
      controller: controller.pageController,
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(height: 30),
            Image.asset(
              "${onBoardingList[index].image}",
              width: double.infinity,
              height: Get.width / 1.3,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 50),
            Text(
              "${onBoardingList[index].title}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 30),

            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                "${onBoardingList[index].body}",
                style: TextStyle(
                  fontSize: 14,
                  height: 2,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
