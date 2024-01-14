import '../../../controllers/cubit/home/home_search_bar_cubit.dart';
import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class HomeTopIconWidget extends StatelessWidget {
  const HomeTopIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeSearchBarCubit homeCubit = context.watch<HomeSearchBarCubit>();
    return IconButton(
      onPressed: () {
        homeCubit.changeAppBar();
      },
      icon: Icon(
        homeCubit.isSellectedSearchBar ? Icons.close : Icons.search,
        color: exColor(context),
        size: 20.sp,
      ),
    );
  }
}
