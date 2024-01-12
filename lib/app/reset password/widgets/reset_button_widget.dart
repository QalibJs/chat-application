// ignore_for_file: use_build_context_synchronously

import 'package:chat_app/controllers/cubit/auth/auth_cubit.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_navigators.dart';
import '../../../constants/app_texts.dart';
import '../../../data/service/firebase/firebase_services.dart';
import '../../../global/widgets/global_button_widget.dart';
import '../../../global/widgets/global_snackbar.dart';

class ResetButtonWidget extends StatelessWidget {
  const ResetButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return GlobalButtonWidget(
      text: AppTexts.sendcode,
      color: exColor(context),
      onPressed: () async {
        try {
          await FirebaseServices.resetPassword(
              authCubit.resetController.text.trim());
          AppNavigator.out(context);
          GlobalSnackBar.showSuccessSnackkbar(
            context,
            AppTexts.success,
          );
        } on FirebaseException catch (e) {
          GlobalSnackBar.showErrorSnackkbar(
            context,
            e,
          );
        }
      },
    );
  }
}
