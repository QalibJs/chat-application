import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../controllers/cubit/login/login_cubit.dart';
import '../../register/widgets/register_page_view_widget.dart';
import 'login_inputs_widget.dart';

class LoginPageviewInputsWidget extends StatelessWidget {
  const LoginPageviewInputsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    LoginCubit loginCubit = context.watch<LoginCubit>();
    return SizedBox(
      width: context.width,
      height: 49.h,
      child: PageView(
        controller: loginCubit.controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          LoginInputsWidget(),
          RegisterPageViewWidget(),
        ],
      ),
    );
  }
}
