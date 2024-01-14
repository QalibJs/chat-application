import 'package:chat_app/app/main/screen/main_page.dart';
import 'package:chat_app/app/splash/widgets/splash_bacground.dart';
import 'package:chat_app/constants/app_navigators.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

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
      body: const SplashBackground()
    );
  }
}
