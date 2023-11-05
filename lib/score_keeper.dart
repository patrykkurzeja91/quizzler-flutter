import 'package:flutter/material.dart';

class ScoreKeeper {
  List<Icon> _icons = [];
  List<int> _points = [];

  void addScore(bool isCorrect) {
    if (isCorrect) {
      _icons.add(Icon(Icons.check, color: Colors.green));
      _points.add(1);
    } else {
      _icons.add(Icon(Icons.close, color: Colors.red));
      _points.add(0);
    }
  }

  int getTotalPoints() {
    return _points.fold(0, (a, b) => a + b);
  }

  List<Icon> getIcons() {
    return _icons;
  }

  void reset() {
    _icons = [];
    _points = [];
  }
}
