import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../constants/app_elevated_button_styles.dart';
import '../../constants/app_text_styles.dart';

class GlobalButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final Color? color;
  final TextStyle? textStyle;
  final String? offerText;
  const GlobalButtonWidget({
    Key? key,
    this.onPressed,
    required this.text,
    this.color,
    this.textStyle,
    this.offerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () => onPressed!(),
        style: AppElevatedStyles.elevatedButtonStyle(color!),
        child: Text(text, style: AppTextStyle.buttonTextStyle(context)),
      ),
    );
  }
}
