import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigators.dart';
import '../../main/screen/main_page.dart';
import '../widgets/splash_animated_text.dart';
import '../widgets/splash_bottom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
    ).then((value) => AppNavigator.goDelete(context, const MainPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SplashAnimatedTextWidget(),
          SplashBottomText(),
        ],
      ),
    );
  }
}
