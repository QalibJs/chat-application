import 'package:chat_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_text_styles.dart';

class GlobalSnackBar {
  static void showErrorSnackkbar(context, e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.red,
        content: Center(
          child: Text(
            e!.message!,
            textAlign: TextAlign.center,
            style: AppTextStyle.whiteHardText,
          ),
        ),
      ),
    );
  }

    static void showManualErrorSnackkbar(context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.red,
        content: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppTextStyle.whiteHardText,
          ),
        ),
      ),
    );
  }

  static void showSuccessSnackkbar(context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.green,
        content: Center(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: AppTextStyle.whiteHardText,
          ),
        ),
      ),
    );
  }
}
