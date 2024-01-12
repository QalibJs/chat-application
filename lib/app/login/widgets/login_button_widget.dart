import 'package:chat_app/theme/theme.dart';

import '../../../controllers/cubit/delete_acc/delete_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import '../../../global/widgets/global_button_widget.dart';
import '../../../helper/helper.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.read<AuthCubit>();
    DeleteCubit deleteCubit = context.read<DeleteCubit>();
    return Column(
      children: [
        GlobalButtonWidget(
          text: AppTexts.login,
          color: exColor(context),
          onPressed: () {
            if (authCubit.globalKey.currentState!.validate()) {
              Helper.login(authCubit, context);
              deleteCubit.deleteScheck();
            }
          },
        ),
      ],
    );
  }
}
