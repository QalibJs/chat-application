import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controllers/cubit/auth/auth_cubit.dart';
import 'register_input_widget.dart';
import 'register_profile_edit_widget.dart';

class RegisterPageViewWidget extends StatelessWidget {
  const RegisterPageViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    return PageView(
      controller: authCubit.registerInputController,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        RegisterInputWidget(),
        RegisterProfileEditWidget(),
      ],
    );
  }
}
