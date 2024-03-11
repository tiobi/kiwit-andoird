import 'package:flutter/material.dart';

class PageControllerProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  int get index => _selectedIndex;
  PageController get pageController => _pageController;

  void setIndex({
    required int index,
  }) {
    _selectedIndex = index;
    _pageController.jumpToPage(index);

    notifyListeners();
  }
}
