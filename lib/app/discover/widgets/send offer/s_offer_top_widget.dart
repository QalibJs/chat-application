import '../send%20offer/s_offer_button_widget.dart';
import '../send%20offer/s_offer_profile_photo_widget.dart';
import '../../../../constants/app_decorated_box.dart';
import '../../../../constants/app_paddings.dart';
import '../../../../constants/app_sized_box.dart';
import '../../../../extension/context_extension.dart';
import 'package:flutter/material.dart';

class SendOfferTopWidget extends StatelessWidget {
  final String username;
  final String email;
  const SendOfferTopWidget({super.key, required this.username, required this.email,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: context.width,
        decoration: AppBoxDecorations.sendOfferTop(
            Theme.of(context).colorScheme.background),
        child: Padding(
          padding: AppPaddings.all12,
          child: Column(
            children: [
               SendOfferProfilePhotoWidget(username: username,email: email,),
              AppSizedBox.h10,
              const SendOfferButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
