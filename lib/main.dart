import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:noon/route.dart';
import 'package:noon/view/screens/language/language_screen.dart';

import 'core/constant/app_color.dart';
import 'core/localization/controller/lang_controller.dart';
import 'core/localization/translation.dart';
import 'core/services/setting_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await serviceInitialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LangController controller = Get.put(LangController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.black),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColors.black,
          ),
          headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          bodyMedium: TextStyle(fontSize: 14, height: 2, color: AppColors.grey),
        ),
      ),
      home: LanguageScreen(),
      routes: routes,
      locale: controller.language,
      translations: AppTranslation(),
      fallbackLocale: const Locale('en'),
    );
  }
}
