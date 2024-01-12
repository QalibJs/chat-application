import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:flutter/material.dart';
import '../widget/onboard_indicator.dart';
import '../widget/onboard_page_view_builder.dart';
import '../widget/onboard_skip_button_widget.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background == AppColors.black ? AppColors.black7 : exColor(context),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background == AppColors.black ? AppColors.black7 : exColor(context),
        elevation: 0,
        toolbarHeight: 15,
      ),
      body: const Column(
        children: [
          OnboardSkipButtonWidget(),
          OnboardPageViewBuilderWidget(),
          OnboardIndicatorWidget()
        ],
      ),
    );
  }
}
