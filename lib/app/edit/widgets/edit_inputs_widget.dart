import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import 'inputs_for_edit.dart';

class EditInputsWidget extends StatelessWidget {
  const EditInputsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return Padding(
      padding: AppPaddings.all6,
      child: Column(
        children: [
          AppSizedBox.h30,
          InputsForEdit(
            controller: authCubit.bioController,
            hintText: AppTexts.bioHint, maxLines: 120,
          )
        ],
      ),
    );
  }
}
