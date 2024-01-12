import 'package:chat_app/constants/app_texts.dart';
import 'package:chat_app/global/widgets/global_button_widget.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:flutter/material.dart';

class RegisterButtonForCubit extends StatelessWidget {
  final Function() onPressed;
  const RegisterButtonForCubit({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return GlobalButtonWidget(
      color: exColor(context),
      text: AppTexts.next,
      onPressed: onPressed,
    );
  }
}
