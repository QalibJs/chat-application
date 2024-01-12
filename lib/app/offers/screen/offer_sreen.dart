import '../widgets/offer_success_state.dart';
import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import '../widgets/offer_app_bar_widget.dart';
import '../widgets/offer_info_button.dart';

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
        body: const OfferBlocBuilderWidget());
  }
}
