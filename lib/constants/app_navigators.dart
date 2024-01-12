import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  static go(Widget screen, context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static out(context) {
    Navigator.pop(context);
  }

  static goDelete(context, Widget screen) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => screen),
      (route) => false,
    );
  }
}
