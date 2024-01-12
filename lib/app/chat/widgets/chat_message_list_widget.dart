import '../../../constants/app_texts.dart';

import 'chat_snapshot_has_data.dart';
import '../../../global/widgets/global_warning_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../data/service/chat/chat_service.dart';

class ChatMessageListWidget extends StatelessWidget {
  final int index;
  const ChatMessageListWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    ChatService chatProvider = ChatService();
    FirebaseAuth auth = FirebaseAuth.instance;
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccessState) {
          return StreamBuilder(
            stream: chatProvider.getMessage(
                state.usersModel[index].uid!, auth.currentUser!.uid),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ChatSnapshotHasDataWidget(
                  snapshot: snapshot,
                  index: index,
                );
              } else if (snapshot.hasError) {
                return GlobalWarningWidget(
                  text: "${AppTexts.error} təkrar yoxlayın...",
                );
                //! a
              }
              return const SizedBox.shrink();
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
