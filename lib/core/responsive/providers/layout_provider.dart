import 'package:flutter/material.dart';

class PageControllerProvider extends ChangeNotifier {
  int _selectedIndex = 0;

  int get index => _selectedIndex;

  void setIndex({
    required int index,
  }) {
    _selectedIndex = index;
    print('Index: $_selectedIndex');
    notifyListeners();
  }
}
