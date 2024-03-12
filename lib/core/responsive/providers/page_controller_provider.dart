import 'package:flutter/material.dart';

class PageControllerProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  late PageController pageController;

  PageControllerProvider({
    required this.pageController,
  });

  int get index => _selectedIndex;
  PageController get controller => pageController;

  void setIndex({
    required int index,
  }) {
    _selectedIndex = index;
    pageController.jumpToPage(index);

    notifyListeners();
  }
}
