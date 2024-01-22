import 'package:chat_app/app/offers/widgets/offer_item_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OfferListViewWidget extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  const OfferListViewWidget({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: snapshot.data!.docs
          .map(
            (document) => OfferItemWidget(
              document: document,
            ),
          )
          .toList(),
    );
  }
}
