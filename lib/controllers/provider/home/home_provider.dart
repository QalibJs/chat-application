import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  //searcing datas from firebase
  List<String> foundList = [];



  void searchDatas(String query) async {
    final result = await FirebaseFirestore.instance
        .collection("users")
        .where("username", isEqualTo: query)
        .get();
    foundList = result.docs.map((e) => e.data()).cast<String>().toList();
    notifyListeners();
  }
}
