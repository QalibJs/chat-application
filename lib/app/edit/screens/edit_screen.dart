import 'package:chat_app/app/edit/widgets/edit_button_widget.dart';

import '../../../theme/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/edit_inputs_widget.dart';
import '../widgets/edit_profile_photo_widget.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        foregroundColor: exColor(context),
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: const Column(
        children: [
          EditProfilePhotoWidget(),
          EditInputsWidget(),
          EditButtonWidget(isRegister: false,)
        ],
      ),
    );
  }
}
