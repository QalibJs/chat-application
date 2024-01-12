import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashAnimatedTextWidget extends StatelessWidget {
  const SplashAnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colorizeColors = [
      Colors.purple,
      const Color.fromARGB(255, 242, 119, 253),
      const Color.fromARGB(255, 198, 0, 159),
      const Color.fromARGB(255, 252, 243, 252),
    ];
    final colorizeTextStyle = TextStyle(
      fontSize: 28.sp,
    );
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: context.width,
        height: 82.h,
        child: AnimatedTextKit(
          pause: const Duration(milliseconds: 500),
          animatedTexts: [
            ColorizeAnimatedText(
              'Mandalin Chat',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
        ),
      ),
    );
  }
}
