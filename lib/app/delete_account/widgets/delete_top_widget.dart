import 'package:blur/blur.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DeleteTopWidget extends StatelessWidget {
  const DeleteTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Theme.of(context).colorScheme.background != AppColors.black
                ? SizedBox(
                    height: 48.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Blur(
                              blur: 5,
                              child: Container(
                                width: 48.w,
                                height: 20.h,
                                decoration: AppBoxDecorations.deleteAnimatedBoxes(
                                  AppColors.sSimpleBlue,
                                  AppColors.white,
                                  true,
                                  false,
                                ),
                              ),
                            ),
                            // AppSizedBox.w10,
                            Blur(
                              blur: 5,
                              child: Container(
                                width: 48.w,
                                height: 20.h,
                                decoration: AppBoxDecorations.deleteAnimatedBoxes(
                                    AppColors.simpleGreen,
                                    AppColors.white,
                                    false,
                                    false),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Blur(
                              blur: 5,
                              child: Container(
                                width: 48.w,
                                height: 20.h,
                                decoration: AppBoxDecorations.deleteAnimatedBoxes(
                                  AppColors.sSimpleRed,
                                  AppColors.white,
                                  true,
                                  true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
            Column(
              children: <Widget>[
                Theme.of(context).colorScheme.background == AppColors.black
                    ? AppSizedBox.h20
                    : const SizedBox.shrink(),
                Container(
                  width: 130,
                  height: 130,
                  alignment: Alignment.center,
                  decoration: AppBoxDecorations.imgDec(AppAssets.deleteS),
                ),
                AppSizedBox.h40
              ],
            )
          ],
        ),
      ),
    );
  }
}
