import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';
import '../../../extension/context_extension.dart';
import 'package:flutter/material.dart';

class HomeErrorWidget extends StatelessWidget {
  const HomeErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.all12,
      height: 10,
      width: context.width,
      decoration: AppBoxDecorations.br12border(context),
      alignment: Alignment.center,
      child: Text(
        AppTexts.homeError,
        style: AppTextStyle.warning,
        textAlign: TextAlign.center,
      ),
    );
  }
}
