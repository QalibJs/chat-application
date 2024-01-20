import 'package:chat_app/app/offers/widgets/offer_app_bar_widget.dart';
import 'package:chat_app/app/offers/widgets/offer_body_widget.dart';
import 'package:chat_app/app/offers/widgets/offer_info_button.dart';

import '../../../theme/theme.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        foregroundColor: exColor(context),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const OfferAppBarWidget(),
        actions: const [
          OfferInfoButton(),
        ],
      ),
      body: const OfferBodyWidget(),
    );
  }
}
