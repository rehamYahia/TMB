import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noon/core/constant/app_theme.dart';
import 'package:noon/core/services/setting_services.dart';

class LangController extends GetxController {
  late Locale language;
  SettingServices settingServices = Get.find();
  ThemeData appTheme = englishTheme;

  changeLanguage(String langcode) {
    Locale locale = Locale(langcode);
    settingServices.sharedPreferance.setString("lang", langcode);
    appTheme = langcode == "ar" ? arabicTheme : englishTheme;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedLang = settingServices.sharedPreferance.getString("lang");
    if (sharedLang == null) {
      language = Locale(Get.deviceLocale!.languageCode);
    } else if (sharedLang == "ar") {
      language = Locale(sharedLang);
      appTheme = arabicTheme;
    } else if (sharedLang == "en") {
      language = Locale(sharedLang);
      appTheme = englishTheme;
    }
    // else {
    //   language = Locale(sharedLang);
    // }
    super.onInit();
  }
}
