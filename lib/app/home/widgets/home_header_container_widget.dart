import 'package:chat_app/extension/context_extension.dart';

import '../../../controllers/cubit/home/home_top_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_text_styles.dart';

class HomeHeaderContainerWidget extends StatelessWidget {
  final int index;
  final String text;
  const HomeHeaderContainerWidget({
    Key? key,
    required this.index,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeTopCubit homeCubit = context.watch<HomeTopCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              homeCubit.homeController.jumpToPage(index);
              homeCubit.selectItem(index);
            },
            child: Container(
              alignment: Alignment.center,
              width: context.width / 2,
              color: AppColors.transparent,
              child: Text(
                text,
                style: AppTextStyle.simpleBlueText,
              ),
              // decoration: const BoxDecoration(),
            ),
          ),
        ),
        homeCubit.currentIndex == index
            ? Container(
                height: 3,
                color: AppColors.simpleBlue,
                width: context.width / 2,
              )
            : const SizedBox(
                height: 3,
              )
      ],
    );
  }
}
