import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_sized_box.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/controllers/cubit/home/home_cubit.dart';
import 'package:chat_app/controllers/cubit/home/home_state.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:chat_app/global/widgets/global_error_widget.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class ProfileUserDatasWidget extends StatelessWidget {
  const ProfileUserDatasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;

    return Padding(
      padding: AppPaddings.all12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            auth.currentUser!.email!,
            style: AppTextStyle.profile(
              exColor(context),
            ),
          ),
          AppSizedBox.h3,
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadingState) {
                return const CircularProgressIndicator();
              } else if (state is HomeSuccessState) {
                return SizedBox(
                  width: context.width -(68 + 12.h),
                  height: 30,
                  child: ListView.builder(
                    itemCount: 1,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final user = state.usersModel
                          .firstWhere((data) => data.uid == auth.currentUser!.uid)
                          .username;
                      return Text(
                        user!,
                        style: AppTextStyle.profile(
                          AppColors.green,
                        ),
                      );
                    },
                  ),
                );
              }
              return const GlobalErrorWidget();
            },
          ),
        ],
      ),
    );
  }
}
