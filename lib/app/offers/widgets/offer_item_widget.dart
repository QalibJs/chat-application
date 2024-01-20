import 'package:chat_app/app/offers/widgets/offer_empty_widget.dart';
import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OfferItemWidget extends StatelessWidget {
  final QueryDocumentSnapshot<Object?>? document;

  const OfferItemWidget({super.key, this.document});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = document!.data() as Map<String, dynamic>;
    dynamic username = data['username'];
    dynamic bio = data['bio'];
    dynamic email = data['email'];
    return data.isEmpty
        ? const OfferEmptyWidget()
        : Container(
            width: context.width,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).colorScheme.background == AppColors.black
                  ? AppColors.black4
                  : AppColors.grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(username),
                  ],
                ),
                Text(email),
                Text(bio),
              ],
            ),
          );
  }
}
