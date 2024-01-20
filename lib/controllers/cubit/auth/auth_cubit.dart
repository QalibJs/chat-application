
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/service/hive/hive_service.dart';

class AuthCubit extends Cubit<int> {
  AuthCubit() : super(0);

  TextEditingController registerEmail = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController registerPassword = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  TextEditingController registerPasswordA = TextEditingController();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController resetController = TextEditingController();
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
