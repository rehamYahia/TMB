import 'package:get/get.dart';

class Go {
  static to(String route) {
    Get.toNamed(route);
  }

  static off(String route) {
    Get.offNamed(route);
  }
}
