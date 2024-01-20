import 'package:chat_app/locator/locator.dart';

import '../../../data/service/hive/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteCubit extends Cubit<int> {
  DeleteCubit() : super(0);

  TextEditingController mailController = locator.get<TextEditingController>();
  TextEditingController passwordController = locator.get<TextEditingController>();
  GlobalKey<FormState> deleteKey = GlobalKey();

  void loginCheck() {
    HiveService.instance.then(
      (hive) => hive.saveData("checkingLogin", 1),
    );
  }

  void deleteScheck(){
    HiveService.instance.then(
      (hive) => hive.saveData("checkingLogin", 0),
    );
  }

  @override
  Future<void> close() {
    mailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
