import 'package:chat_app/extension/context_extension.dart';

import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../controllers/cubit/login/login_cubit.dart';
import '../../../data/model/login/login_to_register_model.dart';

class LoginToRegister extends StatelessWidget {
  const LoginToRegister({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<LoginToRegisterModel> text = LoginToRegisterModel.texts;
    LoginCubit loginCubit = context.watch<LoginCubit>();
    return SizedBox(
      width: context.width,
      height: 10.h,
      child: ListView.builder(
        itemCount: text.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final texts = text[index];
          return Row(
            children: [
              Padding(
                padding: AppPaddings.lr18.copyWith(
                  right: 0,
                  top: 5.h,
                ),
                child: GestureDetector(
                  onTap: () {
                    loginCubit.changePage(index);
                    loginCubit.controller.jumpToPage(index);
                  },
                  child: Column(
                    children: [
                      Text(
                        texts.text,
                        style: AppTextStyle.blackHardText(context),
                      ),
                      AppSizedBox.h5,
                      loginCubit.currentIndex == index
                          ? Container(
                              width: loginCubit.currentIndex == 0 ? 8.h : 10.h,
                              color: exColor(context),
                              height: 2.5,
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
