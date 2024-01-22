import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_texts.dart';
import 'package:chat_app/global/widgets/global_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OfferCustomButtonWidget extends StatelessWidget {
  final bool isCheck;
  const OfferCustomButtonWidget({
    super.key,
    required this.isCheck,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isCheck
            ? GlobalSnackBar.showSuccessSnackkbar(context, AppTexts.acceptedOffer)
            : GlobalSnackBar.showManualErrorSnackkbar(context, AppTexts.ignoredOffer);
      },
      child: Container(
        margin: isCheck ? AppPaddings.all6.copyWith(left: 0) : AppPaddings.all6,
        decoration: AppBoxDecorations.br12black(AppColors.backgroundColor),
        alignment: Alignment.center,
        width: 12.w,
        height: 3.h,
        child: Icon(
          isCheck ? Icons.check : Icons.abc,
          color: isCheck ? AppColors.green : AppColors.red,
        ),
      ),
    );
  }
}
