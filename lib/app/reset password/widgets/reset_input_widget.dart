import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import '../../../global/widgets/global_input_widget.dart';

class ResetInputWidget extends StatelessWidget {
  const ResetInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return GlobalInputWidget(
      isHome: false,
      hintText: AppTexts.email,
      color: AppColors.black,
      isPassword: false,
      controller: authCubit.resetController,
      isMessage: false,
    );
  }
}
