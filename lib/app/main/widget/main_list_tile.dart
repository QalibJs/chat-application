import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../controllers/cubit/main/main_cubit.dart';

class MainTopListTile extends StatelessWidget {
  final String data;
  final int index;
  const MainTopListTile({
    super.key,
    required this.data,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    MainCubit mainCubit = context.read<MainCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            mainCubit.controller.jumpToPage(index);
            // mainCubit.changePage(index);
          },
          child: Container(
            decoration: AppBoxDecorations.br12black(AppColors.grey),
            width: 100,
            height: 25,
            child: Center(
              child: Text(data),
            ),
          ),
        ),
      ],
    );
  }
}
