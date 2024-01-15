import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:chat_app/constants/app_sized_box.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SendOfferProfilePhotoWidget extends StatelessWidget {
  final String username;
  final String email;
  const SendOfferProfilePhotoWidget({super.key, required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 9.h,
          height: 9.h,
          decoration: AppBoxDecorations.sOfferPP(
            exColor(context),
          ),
        ),
        AppSizedBox.w20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text(
              username,
              style: AppTextStyle.whiteMiddleText(exColor(context)),
            ),
            AppSizedBox.h10,
            Text(
              email,
              style: AppTextStyle.whiteSmallText(context),
            )
          ],
        ),
      ],
    );
  }
}
