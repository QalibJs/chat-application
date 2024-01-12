import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<int> {
  LoginCubit() : super(0);

  PageController controller = PageController();
  int currentIndex = 0;
  void changePage(index) {
    currentIndex = index;
    emit(currentIndex);
  }

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }
}
