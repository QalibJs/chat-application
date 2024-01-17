import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_texts.dart';
import 'package:chat_app/data/service/offer/offer_service.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:chat_app/global/widgets/global_button_widget.dart';
import 'package:flutter/material.dart';

class SendOfferButtonWidget extends StatelessWidget {
  final String bio;
  final String username;

  final String receiverID;

  const SendOfferButtonWidget(
      {super.key,
      required this.bio,
      required this.username,
      required this.receiverID});

  @override
  Widget build(BuildContext context) {
    OfferService offerService = OfferService();
    return SizedBox(
      width: context.width,
      height: 40,
      child: GlobalButtonWidget(
        text: AppTexts.sendOffer,
        color: AppColors.backgroundColor,
        onPressed: () {
          offerService.sendOffer(bio, username, receiverID);
        },
      ),
    );
  }
}
