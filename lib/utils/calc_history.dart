import 'package:flutter/material.dart';

class CalcHistory extends ChangeNotifier {
  final List<String> _history = [];

  List<String> get history => _history;

  void addOperation(String operation) {
    _history.insert(0, operation);

    if (_history.length > 20) {
      _history.removeLast();
    }
    notifyListeners();
  }

  void clear() {
    _history.clear();
    notifyListeners();
  }
}
