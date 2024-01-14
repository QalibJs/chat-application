import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSearchBarCubit extends Cubit<bool> {
  HomeSearchBarCubit() : super(false);

  bool isSellectedSearchBar = false;
  
  void changeAppBar() {
    isSellectedSearchBar = !isSellectedSearchBar;
    emit(isSellectedSearchBar);

  }
}