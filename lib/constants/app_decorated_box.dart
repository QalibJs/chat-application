import '../theme/theme.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppBoxDecorations {
  AppBoxDecorations._();

  static Decoration br50black(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(58),
        color: color,
        border: Border.all(
          color: AppColors.black,
          width: 0.5,
        ),
      );
  static Decoration  underlined(context) => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.1,
            color: exColor(context),
          ),
        ),
      );
  static Decoration gradBox() => BoxDecoration(
        borderRadius: BorderRadius.circular(58),
        gradient: LinearGradient(
          colors: [
            AppColors.blue,
            AppColors.purple,
            // AppColors.red,
          ],
        ),
      );
  static Decoration chatTile(context) => BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border(
          bottom: BorderSide(color: AppColors.black, width: 0.1),
        ),
      );
  static Decoration receiverChat(
    Color color,
  ) =>
      BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: color,
      );
  static Decoration senderChat(
    Color color,
  ) =>
      BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
        color: color,
      );
  static Decoration xBr(Color color) => BoxDecoration(
        color: color,
        border: Border.all(color: AppColors.simpleGrey, width: 2),
      );
  static Decoration br12black(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
        border: Border.all(
          color: AppColors.grey,
        ),
      );
  static Decoration br12border(context) => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: exColor(context),
        ),
      );
  static Decoration br12cBorder(Color bcolor, Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
        border: Border.all(
          width: 0.4,
          color: bcolor,
        ),
      );

  static Decoration profileItemsBoxDecoration(context) => BoxDecoration(
        color: Theme.of(context).colorScheme.background == AppColors.white
            ? AppColors.white
            : AppColors.black,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      );
  static Decoration imgDec(dynamic image) => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
        ),
      );
  static Decoration deleteAnimatedBoxes(
          Color color1, Color color2, bool isLeft, bool isBottom) =>
      BoxDecoration(
          gradient: LinearGradient(
            begin: isBottom
                ? Alignment.bottomCenter
                : isLeft
                    ? Alignment.topLeft
                    : Alignment.topRight,
            end: isBottom
                ? Alignment.topCenter
                : isLeft
                    ? Alignment.bottomRight
                    : Alignment.bottomLeft,
            colors: [
              AppColors.white,
              AppColors.white,
              AppColors.white,
              color1,
              color2,
            ],
          ),
          borderRadius: BorderRadius.circular(100));
  static Decoration imgDecCovered(dynamic image) => BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage(image), opacity: 30),
      );
  static Decoration br12(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      );
  static Decoration sendOfferTop(Color color) => BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        color: color,
      );
  static Decoration br50(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: color,
      );
  static Decoration sOfferPP(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      );
  static Decoration br16(Color color) => BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      );
}
