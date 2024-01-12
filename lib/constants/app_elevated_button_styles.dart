import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppElevatedStyles {
  AppElevatedStyles._();
  static ButtonStyle elevatedButtonStyle(Color color) =>
      ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
  static ButtonStyle backButtonStyle() => ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      );
}
