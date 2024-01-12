import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../controllers/cubit/chat/chat_cubit.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../data/service/chat/chat_service.dart';

class ChatButtonWidget extends StatelessWidget {
  final int index;
  const ChatButtonWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    ChatService chatProvider = ChatService(); 
    ChatCubit chatCubit = context.watch<ChatCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccessState) {
          return GestureDetector(
            onTap: () {
              if (chatCubit.messageController.text.isNotEmpty) {
                chatCubit.messagesToEnd();
                chatProvider.sendMessage(
                  state.usersModel[index].uid!,
                  chatCubit.messageController.text.trim(),
                );
                chatCubit.messageController.clear();
              }
            },
            child: Container(
              margin: AppPaddings.lr12.copyWith(bottom: 16, left: 0),
              width: 60,
              height: 60,
              decoration: AppBoxDecorations.br50(AppColors.blue),
              child: Icon(
                Icons.send_outlined,
                color: AppColors.white,
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
