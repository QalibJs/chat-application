import 'register_button_for_cubit.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../controllers/cubit/login/login_cubit.dart';
import '../../../global/widgets/global_snackbar.dart';
import '../../../helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterButtonWidget extends StatelessWidget {
  const RegisterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = context.watch<AuthCubit>();
    LoginCubit loginCubit = context.watch<LoginCubit>();

    return Column(
      children: [
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeSuccessState) {
              final users = state.usersModel;
              return SizedBox(
                height: 100,
                child: ListView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    if (index != 0) {
                      final user = users[index];
                      return RegisterButtonForCubit(
                        onPressed: () {
                          if (authCubit.usernameController.text != user.username) {
                            Helper.register(authCubit, loginCubit, context);
                          } else {
                            GlobalSnackBar.showManualErrorSnackkbar(
                              context,
                              AppTexts.usernameUsed,
                            );
                          }
                        },
                      );
                    }
                    return RegisterButtonForCubit(
                      onPressed: () {
                        Helper.register(authCubit, loginCubit, context);
                      },
                    );
                  },
                ),
              );
            }
            return RegisterButtonForCubit(
              onPressed: () {
                GlobalSnackBar.showManualErrorSnackkbar(
                  context,
                  "Network Error",
                );
              },
            );
          },
        ),
      ],
    );
  }
}
