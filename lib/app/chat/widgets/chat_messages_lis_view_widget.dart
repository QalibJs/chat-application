import '../../../controllers/cubit/chat/chat_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chat_message_item.dart';

class ChatMessagesListViewWidget extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;
  const ChatMessagesListViewWidget({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    ChatCubit chatCubit = context.watch<ChatCubit>();
    return ListView(
      controller: chatCubit.scrollController,
      physics:  const BouncingScrollPhysics(),
      children: snapshot.data!.docs
          .map(
            (document) => ChatMessageItemWidget(
              document: document,
              
            ),
          )
          .toList(),
    );
  }
}
