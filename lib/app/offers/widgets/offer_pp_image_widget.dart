import 'package:chat_app/constants/app_assets.dart';
import 'package:chat_app/constants/app_decorated_box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OfferPpImageWidget extends StatelessWidget {
  const OfferPpImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.w,
      height: 16.w,
      decoration: AppBoxDecorations.imgDecCovered(
        AppAssets.chat,
      ),
    );
  }
}
