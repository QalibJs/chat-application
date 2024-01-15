import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_decorated_box.dart';
import '../../../../constants/app_paddings.dart';
import '../../../../constants/app_text_styles.dart';

class DiscoverListTileWidget extends StatelessWidget {
  final String name;
  final void Function()? onTap;
  const DiscoverListTileWidget({
    super.key,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        decoration:
            AppBoxDecorations.br12(Theme.of(context).colorScheme.background),
        width: context.width,
        height: 9.h,
        margin: AppPaddings.lr12,
        child: Row(
          children:<Widget> [
            Container(
              decoration: AppBoxDecorations.br50(AppColors.grey),
              width: 6.2.h,
              height: 6.2.h,
              margin: AppPaddings.all6.copyWith(right: 16),
            ),
            Padding(
              padding: AppPaddings.all18.copyWith(left: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text(
                    name,
                    style: AppTextStyle.chatPrimaryText(context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
