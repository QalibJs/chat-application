import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSearchBarCubit extends Cubit<int> {
  HomeSearchBarCubit() : super(0);

  bool isSellectedSearchBar = false;
  
  void changeAppBar() {
    isSellectedSearchBar = !isSellectedSearchBar;
    emit(1);
    print(state);

  }
}