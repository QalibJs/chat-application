import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/delete_acc/delete_cubit.dart';
import '../../../global/widgets/global_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteInputsWidget extends StatelessWidget {
  const DeleteInputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DeleteCubit deleteCubit = context.watch<DeleteCubit>();
    return Form(
      key: deleteCubit.deleteKey,
      child: Padding(
        padding: AppPaddings.all12,
        child: Column(
          children: [
            GlobalInputWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return AppTexts.fillBlanks;
                }
                return null;
              },
              controller: deleteCubit.mailController,
              hintText: AppTexts.email,
              isMessage: false,
              color: AppColors.black,
              isPassword: false,
            ),
            AppSizedBox.h10,
            GlobalInputWidget(
              validator: (value) {
                if (value!.isEmpty) {
                  return AppTexts.fillBlanks;
                }
                return null;
              },
              controller: deleteCubit.passwordController,
              hintText: AppTexts.password,
              isMessage: false,
              color: AppColors.black,
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
