import 'package:chat_app/app/offers/widgets/offer_list_view_widget.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OfferSnapshotHasDataWidget extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;

  const OfferSnapshotHasDataWidget({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: OfferListViewWidget(
        snapshot: snapshot,
      ),
    );
  }
}
