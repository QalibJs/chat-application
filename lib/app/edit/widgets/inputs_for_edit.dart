import '../../../theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_text_styles.dart';

class InputsForEdit extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  const InputsForEdit({
    super.key,
    required this.controller,
    required this.hintText,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLines,
      style: AppTextStyle.whiteSmallText(context),
      controller: controller,
      cursorColor: exColor(context),
      decoration: InputDecoration(
        hintStyle: AppTextStyle.whiteSmallText(context),
        hintText: hintText,
      ),
    );
  }
}
