import 'package:flutter/material.dart';

class InputStyleWidget {
  InputStyleWidget._();
  static InputBorder inputBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          width: 1.3,
          color: color,
        ),
      
      );
  static InputBorder border() => InputBorder.none;
}
