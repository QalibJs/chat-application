import 'package:sizer/sizer.dart';

import '../../group/screen/group_screen.dart';
import '../widgets/home_full_widget.dart';
import '../widgets/home_header_widget.dart';
import '../../../controllers/cubit/home/home_top_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeTopCubit homeCubit = context.watch<HomeTopCubit>();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        // automaticallyImplyLeading: false,
        title: const HomeAppBarWidget(),
        toolbarHeight: 10.h,
      ),
      body: Column(
        children: <Widget>[
          const HomeHeaderWidget(),
          Expanded(
            child: PageView(
              controller: homeCubit.homeController,
              children: const [
                HomeFullWidget(),
                GroupScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
