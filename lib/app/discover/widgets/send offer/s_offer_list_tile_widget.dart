import 'package:chat_app/app/discover/widgets/send%20offer/send_offer_list_tile_item.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_texts.dart';
import 'package:flutter/material.dart';

class SendOfferListTile extends StatelessWidget {
  final String username;
  final String bio;
  final String mail;
  const SendOfferListTile({
    super.key,
    required this.username,
    required this.bio,
    required this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.lr12,
      child: Column(
        children: <Widget>[
          SendOfferListTileItemWidget(
              title: username, subTitle: "${AppTexts.username} :"),
          SendOfferListTileItemWidget(
              title: bio, subTitle: "${AppTexts.bio} :"),
          SendOfferListTileItemWidget(
              title: mail, subTitle: "${AppTexts.email} :"),
        ],
      ),
    );
  }
}
