import 'package:chat_app/app/edit/screens/edit_screen.dart';
import 'package:chat_app/constants/app_navigators.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:flutter/material.dart';

class ProfileEditIcon extends StatelessWidget {
  const ProfileEditIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: GestureDetector(
        onTap: () {
          AppNavigator.go(const EditScreen(), context);
        },
        child: Icon(
          Icons.edit_outlined,
          color: exColor(context),
        ),
      ),
    );
  }
}
