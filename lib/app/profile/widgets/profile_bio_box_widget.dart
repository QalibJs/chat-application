import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ProfileBioBoxWidget extends StatelessWidget {
  const ProfileBioBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Padding(
      padding: AppPaddings.all12,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                AppTexts.about,
                style: AppTextStyle.chatHeaderText(context),
              )
            ],
          ),
          AppSizedBox.h10,
          SizedBox(
            height: 60,
            width: context.width,
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeSuccessState) {
                  final bios = state.usersModel;
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      final data = bios[index];
                      return Padding(
                        padding: AppPaddings.all6,
                        child: Text(
                          auth.currentUser!.uid == data.uid ? data.uid! : "",
                          style: AppTextStyle.whiteMiddleText(
                            exColor(context),
                          ),
                        ),
                      );
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}