import 'register_button_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../global/widgets/global_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controllers/cubit/auth/auth_cubit.dart';

class RegisterInputWidget extends StatelessWidget {
  const RegisterInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.read<AuthCubit>();
    return SingleChildScrollView(
      child: Form(
        key: authCubit.globalKey2,
        child: Padding(
          padding: AppPaddings.lr16,
          child: Column(
            children: [
              AppSizedBox.h25,
              GlobalInputWidget(
                isHome: false,
                isMessage: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppTexts.fillBlanks;
                  }
                  return null;
                },
                hintText: AppTexts.email,
                color: AppColors.black,
                controller: authCubit.registerEmail,
                isPassword: false,
              ),
              AppSizedBox.h10,
              GlobalInputWidget(
                hintText: AppTexts.username,
                isMessage: false,
                controller: authCubit.usernameController,
                color: AppColors.black,
                isPassword: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppTexts.fillBlanks;
                  }
                  return null;
                },
              ),
              AppSizedBox.h10,
              GlobalInputWidget(
                isHome: false,
                isMessage: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppTexts.fillBlanks;
                  } else if (authCubit.registerPassword.text.trim() !=
                      authCubit.registerPasswordA.text.trim()) {
                    return "şifrələr uyğunlaşmır";
                  }
                  return null;
                },
                controller: authCubit.registerPassword,
                hintText: AppTexts.password,
                color: AppColors.black,
                isPassword: true,
              ),
              AppSizedBox.h10,
              GlobalInputWidget(
                isHome: false,
                isMessage: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppTexts.fillBlanks;
                  } else if (authCubit.registerPassword.text.trim() !=
                      authCubit.registerPasswordA.text.trim()) {
                    return AppTexts.passwordsDontMatch;
                  }
                  return null;
                },
                hintText: AppTexts.passwordA,
                color: AppColors.black,
                controller: authCubit.registerPasswordA,
                isPassword: true,
              ),
              AppSizedBox.h7,
              const RegisterButtonWidget()
            ],
          ),
        ),
      ),
    );
  }
}