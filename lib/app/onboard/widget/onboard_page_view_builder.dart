import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controllers/cubit/onboard/onboard_cubit.dart';
import '../../../controllers/cubit/onboard/onboard_state.dart';
import '../../../data/model/onboard/onboard_model.dart';
import 'onboard_page_tile.dart';

class OnboardPageViewBuilderWidget extends StatelessWidget {
  const OnboardPageViewBuilderWidget({super.key});
  @override
  Widget build(BuildContext context) {
    OnboardCubit onboardCubit = context.watch<OnboardCubit>();
    List<OnboardModel> onboard = OnboardModel.onboard;
    return SizedBox(
      height: MediaQuery.of(context).size.height - 170,
      child: BlocBuilder<OnboardCubit, OnboardState>(
        builder: (context, state) {
          return PageView.builder(
            itemCount: onboard.length,
            controller: onboardCubit.controller,
            onPageChanged: (value) {
              onboardCubit.onboard(value);
            },
            itemBuilder: (context, index) {
              final items = onboard[index];
              return OnboardPageTileWidget(
                image: items.image,
                text: items.text,
              );
            },
          );
        },
      ),
    );
  }
}
