import 'package:flutter/material.dart';

import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';

class ResetWarningTextWidget extends StatelessWidget {
  const ResetWarningTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.forgotPassword,
          textAlign: TextAlign.center,
          style: AppTextStyle.blackBigText,
        ),
        AppSizedBox.h15,
        Text(
          AppTexts.warning,
          textAlign: TextAlign.center,
          style: AppTextStyle.blackSmallText(context),
        ),
      ],
    );
  }
}
