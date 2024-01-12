import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';

class ChatMessageItemWidget extends StatelessWidget {
  final QueryDocumentSnapshot<Object?>? document;
  const ChatMessageItemWidget({super.key, this.document});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    Map<String, dynamic> data = document!.data() as Map<String, dynamic>;
    var alignment = data['senderId'] == auth.currentUser!.uid
        ? Alignment.centerRight
        : Alignment.centerLeft;
    var margin = data['senderId'] == auth.currentUser!.uid
        ? const EdgeInsets.only(
            right: 10,
            top: 5,
            bottom: 5,
          )
        : const EdgeInsets.only(
            left: 10,
            top: 5,
            bottom: 5,
          );

    var mainAxis = data['senderId'] == auth.currentUser!.uid
        ? MainAxisAlignment.end
        : MainAxisAlignment.start;

    return Row(
      mainAxisAlignment: mainAxis,
      children: [
        Container(
          width: data['message'].length >= 29 ? 62.w : null,
          padding: AppPaddings.all4,
          margin: margin,
          decoration: data['senderId'] == auth.currentUser!.uid
              ? AppBoxDecorations.senderChat(AppColors.simpleBlue)
              : AppBoxDecorations.receiverChat(AppColors.middleGrey),
          alignment: alignment,
          child: Padding(
            padding: data['senderId'] == auth.currentUser!.uid
                ? AppPaddings.all6.copyWith(right: 12)
                : AppPaddings.all6.copyWith(left: 12),
            child: Text(
              data['message'],
              style: AppTextStyle.chatItem,
            ),
          ),
        ),
      ],
    );
  }
}
