import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import '../../../global/widgets/global_input_widget.dart';
import 'login_button_widget.dart';
import 'login_forgot_password.dart';

class LoginInputsWidget extends StatelessWidget {
  const LoginInputsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.read<AuthCubit>();
    return Form(
      key: authCubit.globalKey,
      child: Padding(
        padding: AppPaddings.lr12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppSizedBox.h25,
            GlobalInputWidget(
              isHome: false,
              isMessage: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return "fill blank";
                }
                return null;
              },
              hintText: AppTexts.email,
              color: exColor(context),
              controller: authCubit.loginEmail,
              isPassword: false,
            ),
            AppSizedBox.h10,
            GlobalInputWidget(
              isHome: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return "fill blank";
                }
                return null;
              },
              controller: authCubit.loginPassword,
              hintText: AppTexts.password,
              color: exColor(context),
              isPassword: true,
              isMessage: false,
            ),
            AppSizedBox.h3,
            const LoginResetPassword(),
            AppSizedBox.h3,
            const LoginButtonWidget()
          ],
        ),
      ),
    );
  }
}
