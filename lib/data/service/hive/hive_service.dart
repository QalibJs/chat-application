import 'package:hive/hive.dart';


class HiveService {
  HiveService._();
  static HiveService? _instance;
  static Box? _box;

  static Future<HiveService> get instance async {
    _instance ??= HiveService._();
    _box ??= await Hive.openBox("onboard");
    return _instance!;
  }

  void saveData(String key, dynamic value) => _box?.put(key, value);
  dynamic getData(String key) => _box?.get(key);
  void getbyIndex(int key) => _box?.getAt(key);
  void deleteData(String key) => _box?.delete(key);
}
