import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_texts.dart';
import '../../../controllers/cubit/onboard/onboard_cubit.dart';
import '../../../controllers/cubit/onboard/onboard_state.dart';
import '../../../data/model/onboard/onboard_model.dart';
import '../../../global/widgets/global_button_widget.dart';
import '../../login/screen/login_screen.dart';

class OnboardIndicatorWidget extends StatelessWidget {
  const OnboardIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<OnboardModel> onboard = OnboardModel.onboard;
    OnboardCubit onboardCubit = context.watch<OnboardCubit>();
    return BlocBuilder<OnboardCubit, OnboardState>(
      builder: (context, state) {
        if (state is OnboardNotLastState) {
          return SmoothPageIndicator(
            controller: onboardCubit.controller,
            count: onboard.length,
            effect: WormEffect(
              dotColor: AppColors.white,
              activeDotColor: AppColors.greyBlueGreen,
              spacing: 18,
            ),
          );
        } else if (state is OnboardLastState) {
          return Padding(
            padding: AppPaddings.lr24,
            child: GlobalButtonWidget(
              onPressed: () {
                AppNavigator.goDelete(context, const LoginScreen());
                onboardCubit.saveState();
              },
              text: AppTexts.begin,
              color: AppColors.greyBlueGreen,
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
