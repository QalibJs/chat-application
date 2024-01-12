import '../widgets/group_float_button.dart';
import '../../../constants/app_sized_box.dart';
import 'package:flutter/material.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const GroupFloatButton(),
          AppSizedBox.h100,
        ],
      ),
    );
  }
}
