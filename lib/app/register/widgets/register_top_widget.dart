import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';

class RegisterTopWidget extends StatelessWidget {
  const RegisterTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 7.h,
          height: 7.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.chatBox,
              ),
            ),
          ),
        ),
        AppSizedBox.h10,
        Text(
          AppTexts.signupTop,
          style: AppTextStyle.blackMiddleText(context),
        ),
      ],
    );
  }
}
