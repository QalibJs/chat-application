import 'package:flutter/material.dart';

import '../../../constants/app_texts.dart';

class ProfileModel {
  final String text;
  final IconData icon;
  ProfileModel({
    required this.text,
    required this.icon,
  });

  static List<ProfileModel> settingsModel = [
    ProfileModel(
      text: AppTexts.resetPassword,
      icon: Icons.lock_open_outlined,
    ),
    // ProfileModel(
    //   text: AppTexts.nightMode,
    //   icon: Icons.mode_night_outlined,
    // ),
    ProfileModel(
      text: AppTexts.deleteAccount,
      icon: Icons.delete_outline,
    ),
    ProfileModel(
      text: AppTexts.logOut,
      icon: Icons.logout,
    ),
  ];
}
