import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/app_routes.dart';
import '../../core/constant/routes/navigate.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int pageNum);
  navigateToLogin();
}

class OnboardingControllerImp extends OnboardingController {
  int currentPage = 0;
  late PageController pageController;
  @override
  next() {
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: Duration(microseconds: 900),
      curve: Curves.bounceInOut,
    );
  }

  @override
  onPageChanged(int pageNum) {
    currentPage = pageNum;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  navigateToLogin() {
    Go.off(AppRoutes.login);
  }
}
