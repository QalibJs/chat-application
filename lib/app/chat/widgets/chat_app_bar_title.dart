import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_sized_box.dart';
import '../../../constants/app_text_styles.dart';

class ChatAppBarTitle extends StatelessWidget {
  final String name;
  const ChatAppBarTitle({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: AppBoxDecorations.br50(AppColors.grey),
          width: 6.2.h,
          height: 6.2.h,
          // margin: AppPaddings.all6(),
        ),
        AppSizedBox.w20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: AppTextStyle.chatHeaderText(context),
            ),
            AppSizedBox.h10,
            Text(
              "date",
              style: AppTextStyle.chatHeaderText(context),
            ),
          ],
        ),
      ],
    );
  }
}
