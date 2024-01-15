// ignore_for_file: use_build_context_synchronously
import 'package:chat_app/app/reset%20password/screen/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_navigators.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';


class LoginResetPassword extends StatelessWidget {
  const LoginResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.read<AuthCubit>();
    // FirebaseAuth auth = FirebaseAuth.instance;
    return GestureDetector(
      onTap: () async {
        authCubit.resetController.clear();
        AppNavigator.go(const ResetPasswordScreen(), context);
      },
      child: Column(
        children: [
          AppSizedBox.h10,
          Padding(
            padding: AppPaddings.lr16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  AppTexts.resetPassword,
                  style: AppTextStyle.bluekHardText,
                ),
              ],
            ),
          ),
          AppSizedBox.h15,
        ],
      ),
    );
  }
}
