import 'dart:ui';

import 'package:get/get.dart';
import 'package:noon/core/services/setting_services.dart';

class LangController extends GetxController {
  late Locale language;
  SettingServices settingServices = Get.find();

  changeLanguage(String langcode) {
    Locale locale = Locale(langcode);
    settingServices.sharedPreferance.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLang = settingServices.sharedPreferance.getString("lang");
    if (sharedLang == null) {
      language = Locale(Get.deviceLocale!.languageCode);
    } else {
      language = Locale(sharedLang);
    }
    super.onInit();
  }
}
