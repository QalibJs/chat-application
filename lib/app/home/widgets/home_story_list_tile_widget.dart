import '../../../constants/app_texts.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';

class HomeStoryListTileWidget extends StatelessWidget {
  final int index;
  final String username;
  const HomeStoryListTileWidget({
    Key? key,
    required this.index, required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // AppNavigator.go(
        //       StoryScreen(
        //       profileImg: "https://lh3.googleusercontent.com/a/ACg8ocKF4Sfje9VV730vf2fN5h_XtNJUWj0yeEfNobQhfzcbF0E=s576-c-no",
        //       storyimg: 'https://lh3.googleusercontent.com/a/ACg8ocKF4Sfje9VV730vf2fN5h_XtNJUWj0yeEfNobQhfzcbF0E=s576-c-no',
        //       username: username,
        //     ),
            // context);
      },
      child: Padding(
        padding: AppPaddings.all4.copyWith(left: 12, right: 12),
        child: Column(
          children: <Widget>[
            Container(
              width: 65,
              height: 65,
              decoration: AppBoxDecorations.br50black(
                AppColors.black,
              ),
            ),
            AppSizedBox.h10,
            Text(index == 0 ? AppTexts.me : username)
          ],
        ),
      ),
    );
  }
}
