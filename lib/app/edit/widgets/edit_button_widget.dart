import 'package:chat_app/data/service/firebase/firebase_services.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import '../../../controllers/cubit/login/login_cubit.dart';
import '../../../global/widgets/global_button_widget.dart';
import '../../../global/widgets/global_snackbar.dart';

class EditButtonWidget extends StatelessWidget {
  final bool isRegister;
  const EditButtonWidget({super.key, required this.isRegister});

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.watch<LoginCubit>();
    AuthCubit authCubit = context.watch<AuthCubit>();
    return Container(
      margin: AppPaddings.all12,
      width: context.width,
      child: GlobalButtonWidget(
        text: isRegister? AppTexts.goLogin: AppTexts.update,
        color: exColor(context),
        onPressed: () {
          try {
            FirebaseServices.update(authCubit.bioController.text);
            GlobalSnackBar.showSuccessSnackkbar(
              context,
              AppTexts.warning2,
            );
            loginCubit.controller.jumpToPage(0);
            loginCubit.changePage(0);
            authCubit.registerInputController.jumpToPage(0);
          } on FirebaseException catch (e) {
            GlobalSnackBar.showErrorSnackkbar(context, e);
          }
        },
      ),
    );
  }
}
