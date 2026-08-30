import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/app_image_asset.dart';

class CustomAuthLogo extends StatelessWidget {
  const CustomAuthLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AppImageAsset.logo, width: 150, height: 150);
  }
}
