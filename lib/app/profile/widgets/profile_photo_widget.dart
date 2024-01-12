import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfilePhotoWidget extends StatelessWidget {
  const ProfilePhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.h,
      height: 12.h,
      decoration: AppBoxDecorations.sOfferPP(exColor(context)),
      child: Center(
        child: Icon(
          Icons.person_rounded,
          size: 7.h,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
    );
  }
}
