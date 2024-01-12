import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_paddings.dart';
import '../../../helper/helper.dart';

class OfferInfoButton extends StatelessWidget {
  const OfferInfoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Helper.offerInfo(context);
      },
      child: Padding(
        padding: AppPaddings.lr12,
        child: Icon(
          Icons.info_outline,
          size: 20.sp,
        ),
      ),
    );
  }
}
