import 'package:flutter/material.dart';

class ListProvider with ChangeNotifier {
  List<dynamic> _list = [];
  List<dynamic> get list => _list;

  void updateList(List<dynamic> newList) {
    _list = newList;
    print('Updating list !!!!');
    notifyListeners();
  }
}
