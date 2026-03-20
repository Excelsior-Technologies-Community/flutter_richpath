import 'package:flutter/material.dart';

class RichPathController extends ChangeNotifier {

  double progress = 0;

  void setProgress(double value) {
    progress = value.clamp(0, 1);
    notifyListeners();
  }

  void animateForward() {
    progress = 1;
    notifyListeners();
  }

  void reset() {
    progress = 0;
    notifyListeners();
  }
}