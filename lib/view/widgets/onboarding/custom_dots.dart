import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding/onboarding_controller.dart';

class CustomOnboardingDots {
  static Widget customDots(int listLength, Color dotsColor) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(listLength, (index) {
            return AnimatedContainer(
              margin: EdgeInsets.all(2),
              duration: Duration(microseconds: 900),
              height: 6,
              width: controller.currentPage == index ? 20 : 6,
              decoration: BoxDecoration(
                color: dotsColor,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          }),
        ],
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// ...List.generate(onBoardingList.length, (index) {
// return AnimatedContainer(
// margin: EdgeInsets.all(2),
// duration: Duration(microseconds: 900),
// height: 6,
// width: 6,
// decoration: BoxDecoration(
// color: AppColors.black,
// borderRadius: BorderRadius.circular(10),
// ),
// );
// }),
// ],
// ),
