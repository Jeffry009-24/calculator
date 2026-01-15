import 'package:flutter/widgets.dart';

class CalculatorController extends ChangeNotifier {
  String _expression = '';

  String get expression => _expression;

  void input(String value) {
    if (value == 'C') {
      _expression = '';
    } else if (value == '<-') {
      deleteLast();
    } else if (value == '=') {
      evaluate();
    } else {
      _expression += value;
    }
    notifyListeners();
  }

  void deleteLast() {
    if (_expression.isNotEmpty) {
      _expression = _expression.substring(0, _expression.length - 1);
    }
  }

  void evaluate() {
    _expression = 'Evaluar la expresión';
  }
}
