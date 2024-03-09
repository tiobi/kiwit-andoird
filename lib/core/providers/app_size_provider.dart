import 'package:flutter/material.dart';

class AppSizeProvider extends ChangeNotifier {
  Size? _size;
  double? _width;
  double? _height;

  Size? get size => _size;
  double? get width => _width;
  double? get height => _height;

  void setUpAppSize({required BuildContext context}) {
    _size = MediaQuery.of(context).size;
    _width = _size!.width;
    _height = _size!.height;

    notifyListeners();
  }
}
