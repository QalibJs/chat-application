import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/constants/app_texts.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SendOfferListTileItemWidget extends StatelessWidget {
  final String? title;
  final String subTitle;
  const SendOfferListTileItemWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 6.h,
      decoration: AppBoxDecorations.underlined(context),
      child: Padding(
        padding: AppPaddings.bottom10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children:<Widget> [
            Text(
              subTitle,
              style: AppTextStyle.blackHardText(context),
            ),
            const Spacer(),
            Padding(
              padding: AppPaddings.lr12,
              child: Text(
                title ?? AppTexts.notFound,
                style: AppTextStyle.profilDatas(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
