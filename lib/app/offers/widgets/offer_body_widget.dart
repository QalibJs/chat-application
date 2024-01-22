import 'package:chat_app/app/offers/widgets/offer_snapshot_has_data_widget.dart';
import 'package:chat_app/data/service/offer/offer_service.dart';
import 'package:chat_app/global/widgets/global_error_widget.dart';
import 'package:chat_app/global/widgets/global_loading_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OfferBodyWidget extends StatelessWidget {
  const OfferBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    OfferService offerService = OfferService();
    return StreamBuilder(
      stream: offerService.getOffer(auth.currentUser!.uid, "J1LbqIaPxCOsBFGcCV2JwdVHSL22"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return OfferSnapshotHasDataWidget(snapshot: snapshot); // teklifler gorunecek burda
        }
        else if (snapshot.hasError) {
          return const GlobalErrorWidget(); //error
        }
        else if (snapshot.connectionState == ConnectionState.waiting) {
          return const GlobalLoadingWidget();
        }
        return const SizedBox.shrink();
      },
    );
  }
}
