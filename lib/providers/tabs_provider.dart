import 'package:flutter/material.dart';

class TabsProvider with ChangeNotifier {
  var indexTab = 0;

  get index => indexTab;

  Future<void> setTab(index) async {
    indexTab = index;
    notifyListeners();
  }
}