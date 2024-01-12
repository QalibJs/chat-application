import 'package:chat_app/extension/context_extension.dart';

import 'home_story_list_tile_widget.dart';
import '../../../constants/app_colors.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeStoryListViewWidget extends StatelessWidget {
  const HomeStoryListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccessState) {
          final user = state.usersModel;
          return Container(
            color: AppColors.white,
            width: context.width,
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: user.length,
              itemBuilder: (context, index) {
                final users = user[index];
                return HomeStoryListTileWidget(
                  index: index,
                  username: users.username!,
                );
              },
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
