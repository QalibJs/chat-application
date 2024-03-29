import '../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static whiteSmallText(BuildContext context) =>
      TextStyle(color: exColor(context));
  static get whiteSoSmallText =>
      TextStyle(color: AppColors.white, fontSize: 11.sp);
  static whiteMiddleText(Color color) => TextStyle(
        color: color,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w500,
      );
  static appBar(BuildContext context) => TextStyle(
        color: exColor(context),
        fontSize: 15.sp,
        fontWeight: FontWeight.w500,
      );
  static profile(Color color) => TextStyle(
        color: color,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w500,
      );
  static buttonTextStyle(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.background,
        fontSize: 11.5.sp,
        fontWeight: FontWeight.w500,
      );
  static get warning => TextStyle(
        color: AppColors.red,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w500,
      );

  static blackSmallText(BuildContext context) => TextStyle(
        color: exColor(context),
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );

  static hardGreySmallText(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.background == AppColors.black
            ? exColor(context)
            : AppColors.hardGrey,
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );

  static get whiteBigHardText => TextStyle(
        color: AppColors.white,
        fontSize: 19.5.sp,
        fontWeight: FontWeight.w800,
      );

  static get whiteHardText => TextStyle(
        color: AppColors.white,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w700,
      );

  static get topTitles => TextStyle(
        color: AppColors.black,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      );

  static blackMiddleText(BuildContext context) => TextStyle(
        color: exColor(context),
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w500,
      );
  static profilDatas(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.background == AppColors.black
            ? AppColors.green
            : AppColors.darkGreen,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w500,
      );

  static get chatItem => TextStyle(
        color: AppColors.black7,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w500,
      );

  static chatPrimaryText(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.background == AppColors.black
            ? AppColors.white
            : AppColors.black,
        fontSize: 13.5.sp,
        fontWeight: FontWeight.w500,
      );

  static get chatText => TextStyle(
        color: AppColors.black,
        fontSize: 13.5.sp,
        fontWeight: FontWeight.w400,
      );

  static blackHardText(BuildContext context) => TextStyle(
        color: exColor(context),
        fontSize: 12.sp,
        fontWeight: FontWeight.w900,
      );

  static get blackBigText => TextStyle(
        color: AppColors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );

  static chatHeaderText(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.background == AppColors.black
            ? AppColors.white
            : AppColors.black,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w700,
      );

  static get bluekHardText => TextStyle(
        color: AppColors.blue,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w900,
      );

  static get simpleBlueText => TextStyle(
        color: AppColors.blue,
        fontSize: 12.5.sp,
        fontWeight: FontWeight.w600,
      );
}
