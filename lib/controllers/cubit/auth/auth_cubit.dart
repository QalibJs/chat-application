import 'package:chat_app/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/service/hive/hive_service.dart';

class AuthCubit extends Cubit<int> {
  AuthCubit() : super(0);

  TextEditingController registerEmail = locator.get<TextEditingController>();
  TextEditingController usernameController = locator.get<TextEditingController>();
  TextEditingController registerPassword = locator.get<TextEditingController>();
  TextEditingController loginPassword = locator.get<TextEditingController>();
  TextEditingController registerPasswordA = locator.get<TextEditingController>();
  TextEditingController loginEmail = locator.get<TextEditingController>();
  TextEditingController bioController = locator.get<TextEditingController>();
  TextEditingController resetController = locator.get<TextEditingController>();
  PageController registerInputController = PageController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  GlobalKey<FormState> globalKey2 = GlobalKey<FormState>();
  // final isVerified = FirebaseAuth.instance.currentUser!.emailVerified;

  void clearLoginControllers() {
    loginPassword.clear();
    loginEmail.clear();
  }

  void clearRegisterControllers() {
    registerPassword.clear();
    registerEmail.clear();
    registerPasswordA.clear();
    usernameController.clear();
  }


  void saveState() {
    HiveService.instance.then(
      (hive) => hive.saveData(
        "onboard",
        2,
      ),
    );
  }

  @override
  Future<void> close() {
    registerEmail.dispose();
    registerPassword.dispose();
    loginPassword.dispose();
    registerPasswordA.dispose();
    registerInputController.dispose();
    usernameController.dispose();
    loginEmail.dispose();
    return super.close();
  }
}
