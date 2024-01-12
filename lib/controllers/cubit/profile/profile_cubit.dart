import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/service/hive/hive_service.dart';

class ProfileCubit extends Cubit<int> {
  ProfileCubit() : super(0);

 

  void saveState() {
    HiveService.instance.then(
      (hive) => hive.saveData("onboard", 3),
    );
  }

 
}
