import '../constants/app_colors.dart';
import '../constants/app_input_styles.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    border: InputStyleWidget.inputBorder(AppColors.black),
    enabledBorder: InputStyleWidget.inputBorder(AppColors.black),
  ),
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,
    background: AppColors.white,
  ),
);

ThemeData darkMode = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    border: InputStyleWidget.inputBorder(AppColors.white),
    enabledBorder: InputStyleWidget.inputBorder(AppColors.white),
    // focusedBorder: Inputs
  ),
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    background: AppColors.black,
  ),
);

Color exColor(BuildContext context) =>
    Theme.of(context).colorScheme.background == AppColors.black
        ? AppColors.white
        : AppColors.black;

Color smoothColor(BuildContext context) =>
    Theme.of(context).colorScheme.background == AppColors.black
        ? AppColors.simpleGrey
        : AppColors.white;
