import 'package:chat_app/extension/context_extension.dart';

import '../app/delete_account/screen/delete_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../app/login/screen/login_screen.dart';
import '../app/main/screen/main_page.dart';
import '../constants/app_colors.dart';
import '../constants/app_decorated_box.dart';
import '../constants/app_navigators.dart';
import '../constants/app_paddings.dart';
import '../constants/app_sized_box.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_texts.dart';
import '../data/service/firebase/firebase_services.dart';
import '../global/widgets/global_button_widget.dart';
import '../global/widgets/global_snackbar.dart';

class Helper {
  Helper._();
  //REGISTER
  static void register(authCubit, loginCubit, context) async {
    if (authCubit.globalKey2.currentState!.validate()) {
      try {
        await FirebaseServices.register(
          authCubit.registerEmail.text.trim().toLowerCase(),
          authCubit.registerPassword.text.trim().toLowerCase(),
          authCubit.usernameController.text.trim().toLowerCase(),
          authCubit.bioController.text.trim().toLowerCase(),
        );
        authCubit.registerInputController.jumpToPage(1);
        authCubit.clearRegisterControllers();
        GlobalSnackBar.showSuccessSnackkbar(
          context,
          "${AppTexts.success}, qeydiyyatdan keçdiyiniz mail və şifrə ilə daxil ola bilərsiniz",
        );
      } on FirebaseException catch (e) {
        GlobalSnackBar.showErrorSnackkbar(context, e);
      }
    }
  }
  //REGISTER

  //LOGIN
  static void login(authCubit, context) async {
    try {
      await FirebaseServices.login(
        authCubit.loginEmail.text.trim(),
        authCubit.loginPassword.text.trim(),
      );
      authCubit.saveState();
      authCubit.clearLoginControllers();
      AppNavigator.goDelete(context, const MainPage());
    } on FirebaseException catch (e) {
      GlobalSnackBar.showErrorSnackkbar(context, e);
    }
  }
  //LOGIN

  //PROFILE SHOW DIALOG
  static showLogOutDialog(
    context,
    settingsCubit,
    authCubit,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            children: [
              Text(AppTexts.sure),
              AppSizedBox.h15,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10.h,
                    height: 5.h,
                    child: GlobalButtonWidget(
                      text: AppTexts.yes,
                      onPressed: () {
                        logOut(authCubit, settingsCubit, context);
                      },
                      color: AppColors.black,
                    ),
                  ),
                  AppSizedBox.w10,
                  SizedBox(
                    width: 10.h,
                    height: 5.h,
                    child: GlobalButtonWidget(
                      text: AppTexts.no,
                      onPressed: () {
                        AppNavigator.out(context);
                      },
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
  //PROFILE SHOW DIALOG

  static showDeleteAccountDialog(context, onboardCubit) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            children: [
              Text(AppTexts.sure),
              AppSizedBox.h15,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10.h,
                    height: 5.h,
                    child: GlobalButtonWidget(
                      text: AppTexts.yes,
                      onPressed: () {
                        AppNavigator.goDelete(context, const DeleteScreen());
                        onboardCubit.saveState();
                      },
                      color: AppColors.black,
                    ),
                  ),
                  AppSizedBox.w10,
                  SizedBox(
                    width: 10.h,
                    height: 5.h,
                    child: GlobalButtonWidget(
                      text: AppTexts.no,
                      onPressed: () {
                        AppNavigator.out(context);
                      },
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  static void offerInfo(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          width: context.width,
          height: 40.h,
          child: Column(
            children: [
              Container(
                margin: AppPaddings.all4,
                width: 110,
                height: 7,
                decoration: AppBoxDecorations.br12(
                  AppColors.black,
                ),
              ),
              AppSizedBox.h40,
              Padding(
                padding: AppPaddings.all6,
                child: Text(
                  AppTexts.offerInfo,
                  style:
                      AppTextStyle.blackMiddleText(AppColors.backgroundColor),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  //Logout
  static void logOut(authCubit, settingsCubit, context) {
    authCubit.clearLoginControllers();
    settingsCubit.saveState();
    FirebaseServices.logOut();
    AppNavigator.goDelete(
      context,
      const LoginScreen(),
    );
  }
  //Logout

  static void deleteAccountFromAutH() async {
    await FirebaseServices.deleteAccountAuth();
  }

  static void deleteAccountFromDb() async {
    await FirebaseServices.deleteAccountDb();
  }
}
