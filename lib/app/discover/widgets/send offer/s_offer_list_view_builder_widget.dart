import 'package:chat_app/app/discover/widgets/send%20offer/s_offer_list_tile_widget.dart';
import 'package:flutter/material.dart';

class SendOfferListViewBuilderWidget extends StatelessWidget {
  final String username;
  final String bio;
  final String mail;
  const SendOfferListViewBuilderWidget({
    super.key,
    required this.username,
    required this.bio,
    required this.mail,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Theme.of(context).colorScheme.background,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index) {
            return SendOfferListTile(
              username: username,
              bio: bio,
              mail: mail,
            );
          },
        ),
      ),
    );
  }
}
