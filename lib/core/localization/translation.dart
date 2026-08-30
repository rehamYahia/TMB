import 'package:get/get.dart';

import 'lang/ar.dart';
import 'lang/en.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {"ar": ar, "en": en};
}
