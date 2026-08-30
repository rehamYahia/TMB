import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  late SharedPreferences sharedPreferance;

  Future<SettingServices> init() async {
    sharedPreferance = await SharedPreferences.getInstance();
    return this;
  }
}

Future serviceInitialize() async {
  await Get.putAsync(() => SettingServices().init());
}
