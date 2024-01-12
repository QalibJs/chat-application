import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_decorated_box.dart';

class GlobalErrorWidget extends StatelessWidget {
  const GlobalErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 5.h,
            height: 5.h,
            decoration: AppBoxDecorations.imgDecCovered(AppAssets.error),
          ),
        ],
      ),
    );
  }
}
