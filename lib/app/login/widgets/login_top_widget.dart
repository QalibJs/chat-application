import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/login/login_cubit.dart';

class LoginTopWidget extends StatelessWidget {
  const LoginTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.watch<LoginCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: context.width,
          height: 35.h,
          decoration: BoxDecoration(
            color: AppColors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 30,
              image: AssetImage(
                loginCubit.currentIndex == 0
                    ? AppAssets.loginBG
                    : AppAssets.loginBG2,
              ),
            ),
          ),
          child: Padding(
            padding: AppPaddings.lr18,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget> [
                    Text(
                      loginCubit.currentIndex == 0
                          ? AppTexts.signInTop
                          : AppTexts.signupTop,
                      style: AppTextStyle.whiteBigHardText,
                    ),
                  ],
                ),
                AppSizedBox.h10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      loginCubit.currentIndex == 0
                          ? AppTexts.signInTopB
                          : AppTexts.signupTopB,
                      style: AppTextStyle.whiteSmallText(context),
                    ),
                  ],
                ),
                AppSizedBox.h25
              ],
            ),
          ),
        ),
      ],
    );
  }
}
