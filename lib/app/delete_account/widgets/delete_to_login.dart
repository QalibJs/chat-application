import '../../login/screen/login_screen.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/onboard/onboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteToLogin extends StatelessWidget {
  const DeleteToLogin({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardCubit onboardCubit = context.watch<OnboardCubit>();
    return Container(
      padding: AppPaddings.all2.copyWith(right: 12),
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () {
          AppNavigator.go(const LoginScreen(), context);
          onboardCubit.saveState();
        },
        child: Container(
          color: AppColors.transparent,
          child: Text(
            AppTexts.login,
            style: AppTextStyle.bluekHardText,
          ),
        ),
      ),
    );
  }
}
