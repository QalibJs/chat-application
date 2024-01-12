import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';

class ProfileListTileWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  const ProfileListTileWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.all12,
      width: context.width,
      height: 6.h,
      decoration:
          AppBoxDecorations.xBr(Theme.of(context).colorScheme.background),
      child: Row(
        children: [
          Padding(
            padding: AppPaddings.lr12,
            child: Icon(
              icon,
              size: 16.sp,
            ),
          ),
          AppSizedBox.w10,
          Text(
            text,
            style: AppTextStyle.blackMiddleText(context),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
