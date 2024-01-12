import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_decorated_box.dart';

class ResetTopImage extends StatelessWidget {
  const ResetTopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      height: 20.h,
      decoration: AppBoxDecorations.imgDecCovered(
        AppAssets.reset,
      ),
    );
  }
}
