
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../controllers/cubit/home/home_state.dart';
import '../../../data/model/home/home_model.dart';
import '../../../global/widgets/global_loading_widget.dart';
import 'home_list_view_builder_widget.dart';
class HomeListWidget extends StatelessWidget {
  const HomeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoadingState) {
          return const GlobalLoadingWidget();
        } else if (state is HomeErrorState) {
          return Text(AppTexts.error);
        } else if (state is HomeSuccessState) {
          List<UsersModel> user = state.usersModel;
          return HomeListViewWidget(
            user: user,
            state: state,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
