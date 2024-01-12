import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/service/hive/hive_service.dart';
import 'onboard_state.dart';

class OnboardCubit extends Cubit<OnboardState> {
  OnboardCubit() : super(OnboardNotLastState());
  PageController controller = PageController();
  int currentIndex = 0;

  void onboard(index) {
    currentIndex = index;
    if (currentIndex != 2) {
      emit(OnboardNotLastState());
    } else {
      emit(OnboardLastState());
    }
  }

  void saveState() {
    HiveService.instance.then(
      (hive) => hive.saveData(
        "onboard",
        1,
      ),
    );
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
