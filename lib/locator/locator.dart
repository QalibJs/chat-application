import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton(
    () => locator.get<TextEditingController>(),
  );
}
