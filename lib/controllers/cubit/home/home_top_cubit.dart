import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTopCubit extends Cubit<int> {
  HomeTopCubit() : super(0);
  PageController homeController = PageController();

  int currentIndex = 0;

  void selectItem(int index) {
    currentIndex = index;
    emit(currentIndex);
  }

  @override
  Future<void> close() {
    homeController.dispose();
    return super.close();
  }
}
