import '../widgets/profile_bio_box_widget.dart';
import '../widgets/profile_list_view_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/profile_top_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const Column(
        children: [
          ProfileTopWidget(),
          // Spacer(),
          ProfileBioBoxWidget(),
          // ProfileListView(),
          ProfileListViewWidget()
        ],
      ),
    );
  }
}
