import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/constants/app_texts.dart';
import 'package:flutter/material.dart';

import '../widgets/settings_list_view.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(
          AppTexts.settings,
          style: AppTextStyle.appBar(context),
        ),
      ),
      body: const SettingsListView(),
    );
  }
}
