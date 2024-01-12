import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'data/service/hive/hive_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("onboard");
  await Hive.openBox("checkingLogin");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  HiveService hive = await HiveService.instance;
  int? onboard = hive.getData('onboard');
  

  runApp(MyApp(onboard: onboard),);
}
