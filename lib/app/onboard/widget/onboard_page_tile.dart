import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/extension/context_extension.dart';
import '../../../constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';

class OnboardPageTileWidget extends StatelessWidget {
  final String image;
  final String text;
  const OnboardPageTileWidget({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: context.width,
          height: 62.h,
          margin: AppPaddings.lr64,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Padding(
          padding: AppPaddings.all24,
          child: DefaultTextStyle(
            textAlign: TextAlign.center,
            style: AppTextStyle.whiteMiddleText(AppColors.white),
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 4000),
              animatedTexts: [
                TypewriterAnimatedText(text),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
