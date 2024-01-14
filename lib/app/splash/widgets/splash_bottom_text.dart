import 'package:flutter/material.dart';

import '../../../constants/app_text_styles.dart';

class SplashBottomText extends StatelessWidget {
  const SplashBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Qalib",
            style: AppTextStyle.whiteSoSmallText,
          ),
        ],
      ),
    );
  }
}
