import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingsListTile extends StatelessWidget {
  final String account;
  final int index;
  const SettingsListTile({
    super.key,
    required this.account,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(account, style: AppTextStyle.chatPrimaryText(context)),
        Container(
          margin: AppPaddings.all12,
          width: context.width,
          height: 7.h,
          decoration: AppBoxDecorations.br12(
            AppColors.grey,
          ),
          child: index == 0
              ? Padding(
                padding: AppPaddings.all4,
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Username", style: AppTextStyle.blackBigText,)
                    ],
                  ),
              )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
