import 'package:chat_app/app/profile/widgets/profile_bio_box_widget.dart';
import 'package:chat_app/app/profile/widgets/profile_list_view.dart';
import '../widgets/profile_edit_icon.dart';
import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import '../widgets/profile_top_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        actions: const [
          ProfileEditIcon(),
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: exColor(context),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Column(
        children: [
          ProfileTopWidget(isProfile: true),
          // Spacer(),
          ProfileBioBoxWidget(),
          ProfileListView(),
        ],
      ),
    );
  }
}
