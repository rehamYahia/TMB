import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding/onboarding_controller.dart';
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
              height: 250,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 50),
            Text(
              "${onBoardingList[index].title}",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 30),

            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                "${onBoardingList[index].body}",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        );
      },
    );
  }
}
