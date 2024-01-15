import 'package:chat_app/app/settings/widgets/settings_list_view_widget.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsListViewWidget(),
    );
  }
}
