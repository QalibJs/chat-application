import '../../login/screen/login_screen.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/delete_acc/delete_cubit.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../data/service/firebase/firebase_services.dart';
import '../../../data/service/hive/hive_service.dart';
import '../../../global/widgets/global_button_widget.dart';
import '../../../global/widgets/global_snackbar.dart';
import '../../../helper/helper.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteButtonWidget extends StatelessWidget {
  const DeleteButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DeleteCubit deleteCubit = context.watch<DeleteCubit>();
    HomeCubit homeCubit = context.watch<HomeCubit>();
    return Padding(
      padding: AppPaddings.all12,
      child: GlobalButtonWidget(
        onPressed: () {
          loginCheckoOut(deleteCubit, context, homeCubit);
        },
        text: AppTexts.deleteAccount,
        color: AppColors.black,
      ),
    );
  }
}

Future deleteAcc(
  deleteCubit,
  context,
) async {
  if (deleteCubit.deleteKey.currentState!.validate()) {
    Helper.deleteAccountFromAutH();
    Helper.deleteAccountFromDb();
    AppNavigator.goDelete(
      context,
      const LoginScreen(),
    );
    GlobalSnackBar.showSuccessSnackkbar(
      context,
      AppTexts.success,
    );
  }
}

Future loginCheckoOut(deleteCubit, context, homeCubit) async {
  try {
    await FirebaseServices.login(
      deleteCubit.mailController.text.trim().toLowerCase(),
      deleteCubit.passwordController.text.trim().toLowerCase(),
    );

    deleteCubit.loginCheck();

    HiveService hiveService = await HiveService.instance;
    int checkLogin = hiveService.getData("checkingLogin");
    if (checkLogin == 1) {
      deleteAcc(deleteCubit, context);
      homeCubit.fetchDatas();
    }
  } on FirebaseException catch (e) {
    GlobalSnackBar.showErrorSnackkbar(
      context,
      e.message,
    );
  }
}
