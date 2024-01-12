import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/home/home_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeLoadingState());


  Future<void> fetchDatas() async {
    final datas = await FirebaseFirestore.instance
        .collection("users")
        // .orderBy(
        //   "uid",
        //   descending: false,
        // )
        .get();
    map(datas);
  }



  void map(QuerySnapshot<Map<String, dynamic>> datas) {
    emit(HomeLoadingState());
    final users = datas.docs
        .map(
          (user) => UsersModel(
            email: user['email'],
            uid: user['uid'],
            username: user['username'],
            bio: user['bio'],
          ),
        )
        .toList();
    // ignore: unnecessary_type_check
    if (users is List<UsersModel>) {
      emit(HomeSuccessState(usersModel: users));
    } else {
      emit(HomeErrorState());
    }
  }

  //searching datas

  // int currentIndex = 0;

  // void deleteData(List<UsersModel> user, int index) {
  //   FirebaseAuth auth = FirebaseAuth.instance;

  //   if (auth.currentUser!.email == user[index].email) {
  //     currentIndex = index;

  //     user.remove(user[index]);
  //   }
  //   emit(HomeSuccessState(usersModel: user));
  // }
}
