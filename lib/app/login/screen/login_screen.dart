import '../../../constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/login_page_view.dart';
import '../widgets/login_to_register.dart';
import '../widgets/login_top_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).colorScheme.background == AppColors.black
              ? AppColors.loginBg
              : AppColors.white,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LoginTopWidget(),
            LoginToRegister(),
            LoginPageviewInputsWidget(),
          ],
        ),
      ),
    );
  }
}
