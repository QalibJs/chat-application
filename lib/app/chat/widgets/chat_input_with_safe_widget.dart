import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import 'chat_input_widget.dart';

class ChatInputWithSafeWidget extends StatelessWidget {
  final int index;
  const ChatInputWithSafeWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border(
              top: BorderSide(color: AppColors.black, width: 0.5),
            ),
          ),
          height: 100.5,
          child: Column(
            children: [
              ChatInputWidget(
                index: index,
              ),
            ],
          ),
        ),
        Container(
          height: 32,
          color: Theme.of(context).colorScheme.background == AppColors.black
              ? AppColors.black7
              : AppColors.white,
        )
      ],
    );
  }
}
