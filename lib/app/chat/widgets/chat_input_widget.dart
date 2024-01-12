import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/chat/chat_cubit.dart';
import '../../../global/widgets/global_input_widget.dart';
import 'chat_button_widget.dart';

class ChatInputWidget extends StatelessWidget {
  final int index;
  const ChatInputWidget({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    ChatCubit chatCubit = context.watch<ChatCubit>();
    return Container(
      width: context.width,
      height: 100,
      color: Theme.of(context).colorScheme.background == AppColors.black
          ? AppColors.black7
          : AppColors.white,
      child: Row(
        children: [
          Container(
            margin: AppPaddings.lr12.copyWith(bottom: 16, right: 0),
            width: context.width - 110,
            child: GlobalInputWidget(
              isHome: false,
              controller: chatCubit.messageController,
              color: Theme.of(context).colorScheme.background,
              hintText: AppTexts.message,
              isMessage: true,
              isPassword: false,
            ),
          ),
          const Spacer(),
          ChatButtonWidget(
            index: index,
          )
        ],
      ),
    );
  }
}
