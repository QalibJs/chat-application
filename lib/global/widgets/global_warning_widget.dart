import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/extension/context_extension.dart';
import '../../constants/app_paddings.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_decorated_box.dart';
import '../../constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GlobalWarningWidget extends StatelessWidget {
  final String text;
  const GlobalWarningWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.bottomCenter,
        width: context.width,
        height: 80.h - 40,
        decoration: AppBoxDecorations.imgDec(
          AppAssets.warning,
        ),
        child: Padding(
          padding: AppPaddings.all24,
          child: DefaultTextStyle(
            textAlign: TextAlign.center,
            style: AppTextStyle.warning,
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 5000),
              animatedTexts: [
                TypewriterAnimatedText(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
