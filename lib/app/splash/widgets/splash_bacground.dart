import 'package:chat_app/app/splash/widgets/splash_animated_text.dart';
import 'package:chat_app/app/splash/widgets/splash_bottom_text.dart';
import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: context.height,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.splashPink,
            AppColors.splashBlue
            
          ],
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SplashAnimatedTextWidget(),
          SplashBottomText(),
        ],
      ),
    );
  }
}
