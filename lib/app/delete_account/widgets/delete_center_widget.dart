import 'package:chat_app/extension/context_extension.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import 'package:flutter/material.dart';

class DeleteCenterWidget extends StatelessWidget {
  const DeleteCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.all12,
      width: context.width,
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.deleteAccount,
            style: AppTextStyle.blackBigText,
          ),
          AppSizedBox.h10,
          Text(
            AppTexts.infoDeletingAcc,
            style: AppTextStyle.hardGreySmallText,
          )
        ],
      ),
    );
  }
}
