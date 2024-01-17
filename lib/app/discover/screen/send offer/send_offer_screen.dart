import 'package:firebase_auth/firebase_auth.dart';
import '../../widgets/send%20offer/s_offer_list_view_builder_widget.dart';
import '../../widgets/send%20offer/s_offer_top_widget.dart';
import '../../../../constants/app_texts.dart';
import '../../../../theme/theme.dart';
import 'package:flutter/material.dart';

class SendOfferScreen extends StatelessWidget {
  final String receiverUsername;
  final String senderUsername;
  final String receiverBio;
  final String senderBio;
  final String email;
  final String receiverID;
  const SendOfferScreen({
    super.key,
    required this.receiverUsername,
    required this.senderUsername,
    required this.receiverBio,
    required this.senderBio,
    required this.receiverID, required this.email,
  });

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        foregroundColor: exColor(context),
        centerTitle: true,
        title: Text(AppTexts.userinfo),
      ),
      body: Column(
        children: <Widget>[
          SendOfferTopWidget(
            username: receiverUsername,
            email: email,
            receiverID: receiverID,
            bio: senderBio,
          ),
          SendOfferListViewBuilderWidget(
            username: senderUsername,
            bio: receiverBio,
            mail: auth.currentUser!.email!,
          ),
        ],
      ),
    );
  }
}
