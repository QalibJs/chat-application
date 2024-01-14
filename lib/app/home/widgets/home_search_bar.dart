import 'package:chat_app/app/home/widgets/home_top_icon_widget.dart';
import 'package:chat_app/extension/context_extension.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../global/widgets/global_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            color: Theme.of(context).colorScheme.background,
            width: 79.w,
            child: GlobalInputWidget(
              isHome: true,
              onChanged: (query) {
                // homeCubit.searchDatas(query);
              },
              isPassword: false,
              hintText: AppTexts.search,
              color: AppColors.black,
              isMessage: true,
            ),
          ),
           SizedBox(
            width: 10.w,
            child: const HomeTopIconWidget()
          )
        ],
      ),
    );
  }
}
