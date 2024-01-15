import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_text_styles.dart';

class HomeListTileWidget extends StatelessWidget {
  final String name;
  final bool me;
  // final DocumentSnapshot document;
  final void Function()? onTap;
  const HomeListTileWidget({
    super.key,
    required this.name,
    required this.onTap,
    required this.me,
    // required this.document,
  });

  @override
  Widget build(BuildContext context) {
    // Map<String, dynamic> data = document.data() as Map<String, dynamic>;
    return GestureDetector(
      onTap: () => onTap!(),
      child: Container(
        decoration: AppBoxDecorations.chatTile(context),
        width: context.width,
        height: 9.h,
        margin: AppPaddings.lr12,
        child: Row(
          children:<Widget> [
            Container(
              decoration: AppBoxDecorations.br50(AppColors.grey),
              width: 6.2.h,
              height: 6.2.h,
              margin: AppPaddings.all6.copyWith(right: 16),
            ),
            Padding(
              padding: AppPaddings.all18.copyWith(left: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text(
                    name,
                    style: AppTextStyle.chatPrimaryText(context),
                  ),
                  // AppSizedBox.h5,
                  // Expanded(
                  //   child: Text(
                  //     "${data['message']}",
                  //     overflow: TextOverflow.ellipsis,
                  //     maxLines: 1,
                  //   ),
                  // ),
                ],
              ),
            ),
            const Spacer(),
            me == true
                ? const Icon(Icons.push_pin_outlined)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
