import '../../../theme/theme.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../reset%20password/widgets/reset_button_widget.dart';
import '../widgets/reset_input_widget.dart';
import '../widgets/reset_top_image.dart';
import '../widgets/reset_warning_text_widget.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        foregroundColor: exColor(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.all18,
          child: Column(
            children: [
              const ResetTopImage(),
              AppSizedBox.h25,
              const ResetWarningTextWidget(),
              AppSizedBox.h60,
              const ResetInputWidget(),
              AppSizedBox.h25,
              const ResetButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
