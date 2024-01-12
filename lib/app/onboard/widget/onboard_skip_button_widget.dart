import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/onboard/onboard_cubit.dart';
import '../../login/screen/login_screen.dart';

class OnboardSkipButtonWidget extends StatelessWidget {
  const OnboardSkipButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardCubit onboardCubit = context.read<OnboardCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            AppNavigator.goDelete(context,const LoginScreen());
            onboardCubit.saveState();
          },
          child: Container(
            margin: AppPaddings.lr48,
            alignment: Alignment.center,
            width: 65,
            height: 30,
            decoration: AppBoxDecorations.br16(AppColors.grey),
            child: Text(
              AppTexts.skip,
              style: AppTextStyle.whiteMiddleText(AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}
