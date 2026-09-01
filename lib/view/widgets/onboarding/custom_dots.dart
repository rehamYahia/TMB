import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding/onboarding_controller.dart';

class CustomOnboardingDots extends StatelessWidget {
  final int listLength;
  final Color dotsColor;
  const CustomOnboardingDots({
    super.key,
    required this.listLength,
    required this.dotsColor,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(listLength, (index) {
            return AnimatedContainer(
              margin: EdgeInsets.all(2),
              duration: Duration(milliseconds: 900),
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
