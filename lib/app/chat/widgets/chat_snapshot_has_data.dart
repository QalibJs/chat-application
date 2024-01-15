import 'chat_input_with_safe_widget.dart';
import 'chat_messages_lis_view_widget.dart';
import '../../../constants/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatSnapshotHasDataWidget extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot<Object?>> snapshot;
  final int index;
  const ChatSnapshotHasDataWidget({
    super.key,
    required this.snapshot,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.background == AppColors.black
                  ? AppColors.black7
                  : AppColors.white,
              child: ChatMessagesListViewWidget(
                snapshot: snapshot,
              ),
            ),
          ),
          ChatInputWithSafeWidget(
            index: index,
          ),
        ],
      ),
    );
  }
}
