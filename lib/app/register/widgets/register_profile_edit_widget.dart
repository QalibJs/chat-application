import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../edit/widgets/edit_button_widget.dart';
import '../../edit/widgets/edit_inputs_widget.dart';
import '../../edit/widgets/edit_profile_photo_widget.dart';

class RegisterProfileEditWidget extends StatelessWidget {
  const RegisterProfileEditWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: context.width,
            margin: AppPaddings.all36.copyWith(left: 12, right: 12),
            child: Text(
              AppTexts.bioText,
              style: AppTextStyle.blackMiddleText(context),
              textAlign: TextAlign.center,
            ),
          ),
          const EditProfilePhotoWidget(),
          const EditInputsWidget(),
          const EditButtonWidget(isRegister: true,),
        ],
      ),
    );
  }
}
