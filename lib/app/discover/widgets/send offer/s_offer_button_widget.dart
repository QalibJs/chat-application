import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_texts.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:chat_app/global/widgets/global_button_widget.dart';
import 'package:flutter/material.dart';

class SendOfferButtonWidget extends StatelessWidget {
  const SendOfferButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 40,
      child: GlobalButtonWidget(
        text: AppTexts.sendOffer,
        color: AppColors.backgroundColor,
        onPressed: () {},
      ),
    );
  }
}
