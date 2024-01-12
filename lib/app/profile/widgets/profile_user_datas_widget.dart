import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_sized_box.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
          Text(
            "auth.currentUser.",
            style: AppTextStyle.profile(
              AppColors.simpleGrey,
            ),
          ),
        ],
      ),
    );
  }
}
