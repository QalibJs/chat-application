import '../widgets/delete_inputs_widget.dart';
import '../widgets/delete_to_login.dart';

import '../widgets/delete_button_widget.dart';
import '../widgets/delete_center_widget.dart';
import '../widgets/delete_top_widget.dart';
import 'package:flutter/material.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            DeleteTopWidget(),
            DeleteCenterWidget(),
            DeleteInputsWidget(),
            DeleteToLogin(),
            DeleteButtonWidget()
          ],
        ),
      ),
    );
  }
}
