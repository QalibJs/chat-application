import 'package:flutter/material.dart';

import '../widgets/register_top_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RegisterTopWidget(),
        ],
      ),
    );
  }
}
