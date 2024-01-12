import '../../../data/model/home/home_model.dart';

abstract class HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeSuccessState extends HomeState {
  final List<UsersModel> usersModel;

  HomeSuccessState({required this.usersModel});
}
