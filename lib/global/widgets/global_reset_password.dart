// ignore_for_file: use_build_context_synchronously

import 'package:chat_app/constants/app_navigators.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_decorated_box.dart';
import '../../constants/app_paddings.dart';
import '../../constants/app_sized_box.dart';
import '../../constants/app_text_styles.dart';
import '../../constants/app_texts.dart';
import '../../data/service/firebase/firebase_services.dart';
import 'global_button_widget.dart';
import 'global_input_widget.dart';
import 'global_snackbar.dart';

class GlobalResetPassword {
  static void showdialog(
      context, color, controller, String email, bool isLogin, auth) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: SizedBox(
            width: context.width,
            child: Column(
              children: [
                isLogin
                    ? Column(
                        children: [
                          Container(
                            // width: context.widthh,
                            margin: AppPaddings.all12,
                            decoration: AppBoxDecorations.br12border(color),
                            child: Padding(
                              padding: AppPaddings.all6,
                              child: Text(
                                AppTexts.warning,
                                style: AppTextStyle.blackMiddleText(context),
                              ),
                            ),
                          ),
                          GlobalInputWidget(
                            hintText: AppTexts.email,
                            color: AppColors.black,
                            isPassword: false,
                            controller: controller,
                            isMessage: false,
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${auth.currentUser!.email}",
                            style: AppTextStyle.blackHardText(context),
                          ),
                        ],
                      ),
                AppSizedBox.h10,
                GlobalButtonWidget(
                  text: AppTexts.sendcode,
                  color: AppColors.black,
                  onPressed: () async {
                    try {
                      await FirebaseServices.resetPassword(email);
                      AppNavigator.out(context);
                      GlobalSnackBar.showSuccessSnackkbar(
                          context, AppTexts.success);
                    } on FirebaseException catch (e) {
                      GlobalSnackBar.showErrorSnackkbar(
                        context,
                        e,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
