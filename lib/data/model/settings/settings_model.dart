import 'package:flutter/material.dart';

import '../../../constants/app_texts.dart';

class SettingsModel {
  final String text;
  final IconData icon;
  SettingsModel({
    required this.text,
    required this.icon,
  });

  static List<SettingsModel> settingsModel = [
    SettingsModel(
      text: AppTexts.resetPassword,
      icon: Icons.lock_open_outlined,
    ),
    // ProfileModel(
    //   text: AppTexts.nightMode,
    //   icon: Icons.mode_night_outlined,
    // ),
    SettingsModel(
      text: AppTexts.deleteAccount,
      icon: Icons.delete_outline,
    ),
    SettingsModel(
      text: AppTexts.logOut,
      icon: Icons.logout,
    ),
  ];
}
