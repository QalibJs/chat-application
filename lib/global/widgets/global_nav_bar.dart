import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../constants/app_texts.dart';

class GlobalBottomNavBar extends StatelessWidget {
  final Function(int) onTabChange;
  const GlobalBottomNavBar({
    Key? key,
    required this.onTabChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppPaddings.lrt12.copyWith(bottom: 24),
        child: GNav(
          tabBackgroundColor: Theme.of(context).colorScheme.background,
          padding: AppPaddings.lr12,
          onTabChange: onTabChange,
          tabs: [
            GButton(
              icon: Icons.chat_outlined,
              iconSize: 35,
              text: AppTexts.chat,
              iconColor:
                  Theme.of(context).colorScheme.background == AppColors.black
                      ? AppColors.white
                      : AppColors.black,
              iconActiveColor: AppColors.green,
            ),
            GButton(
              icon: Icons.search,
              iconSize: 35,
              iconColor:
                  Theme.of(context).colorScheme.background == AppColors.black
                      ? AppColors.white
                      : AppColors.black,
              text: AppTexts.discover,
              iconActiveColor: AppColors.green,
            ),
            GButton(
              icon: Icons.local_offer_outlined,
              iconSize: 35,
              text: AppTexts.offers,
              iconColor:
                  Theme.of(context).colorScheme.background == AppColors.black
                      ? AppColors.white
                      : AppColors.black,
              iconActiveColor: AppColors.green,
            ),
            GButton(
              icon: Icons.person_outlined,
              iconSize: 36,
              text: AppTexts.profile,
              iconColor:
                  Theme.of(context).colorScheme.background == AppColors.black
                      ? AppColors.white
                      : AppColors.black,
              iconActiveColor: AppColors.green,
            ),
          ],
        ),
      ),
    );
  }
}
