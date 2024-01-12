import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<int> {
  MainCubit() : super(0);

  // int currentIndex = 0;
  PageController controller = PageController();
  bool isNightMode = false;
  void nightMode() {
    isNightMode =! isNightMode;
  }

  // void changePage(int index) {
  //   currentIndex = index;
  // }
}
