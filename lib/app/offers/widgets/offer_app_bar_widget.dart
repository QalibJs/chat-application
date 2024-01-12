import 'package:flutter/material.dart';

import '../../../constants/app_text_styles.dart';
import '../../../constants/app_texts.dart';

class OfferAppBarWidget extends StatelessWidget {
  const OfferAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.offers,
      style: AppTextStyle.blackBigText,
    );
  }
}
