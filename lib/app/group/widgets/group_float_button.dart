import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import 'package:flutter/material.dart';

class GroupFloatButton extends StatelessWidget {
  const GroupFloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            decoration: AppBoxDecorations.gradBox(),
            child: FloatingActionButton(
              backgroundColor: AppColors.transparent,
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: AppColors.backgroundColor,
                size: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
