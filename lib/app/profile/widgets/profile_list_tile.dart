import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String account;
  const ProfileListTile({
    super.key,
    required this.account,
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
          height: 50,
          decoration: AppBoxDecorations.br12(
            AppColors.grey,
          ),
        ),
      ],
    );
  }
}
