import '../../widgets/send%20offer/s_offer_list_view_builder_widget.dart';
import '../../widgets/send%20offer/s_offer_top_widget.dart';
import '../../../../constants/app_texts.dart';
import '../../../../theme/theme.dart';
import 'package:flutter/material.dart';

class SendOfferScreen extends StatelessWidget {
  final String username;
  final String email;
  final String bio;
  const SendOfferScreen({
    super.key,
    required this.username,
    required this.email,
    required this.bio,
  });

  @override
  Widget build(BuildContext context) {
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
        children: [
          SendOfferTopWidget(
            username: username,
            email: email,
          ),
          SendOfferListViewBuilderWidget(
            username: username,
            bio: bio, mail: email,
          ),
        ],
      ),
    );
  }
}
