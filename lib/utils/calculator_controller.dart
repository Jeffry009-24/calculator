import 'package:calculator/core/error_type.dart';
import 'package:calculator/utils/calc_error.dart';
import 'package:calculator/utils/calc_history.dart';
import 'package:calculator/utils/evaluate_rpn.dart';
import 'package:calculator/utils/shuting_yard.dart';
import 'package:calculator/utils/tokenizer.dart';
import 'package:flutter/widgets.dart';

class CalculatorController extends ChangeNotifier {
  CalcHistory history;

  CalculatorController(this.history);

  String _expression = '';
  String? _result = '';
  CalcError? _error;

  String get expression => _expression;
  String? get result => _result;
  CalcError? get error => _error;

  List operators = ['+', '-', '*', '/'];

  void input(String value) {
    if (value == 'C') {
      _expression = '';
      _result = '';
    } else if (value == '<-') {
      deleteLast();
    } else if (value == '=') {
      evaluate();
    } else if (_expression.isNotEmpty) {
      if (operators.contains(_expression[_expression.length - 1]) &&
          operators.contains(value)) {
        _expression = _expression.substring(0, _expression.length - 1) + value;
      } else {
        _expression += value;
      }
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
    _error = null;

    if (_expression.isEmpty) {
      _error = CalcError(CalcErrorType.empty, 'Expresion Vacía');
      _expression = 'Expresión vacía';
      notifyListeners();
      return;
    }

    try {
      final originalExpression = _expression;

      final tokens = MathTokenizer().tokenize(expression);
      final rpn = toRPN(tokens);
      final value = evaluateRPN(rpn);

      final resultString = value.toString();

      _result = resultString;
      _expression = resultString;

      history.addOperation('$originalExpression = $result');
    } catch (e) {
      _error = CalcError(CalcErrorType.syntax, e.toString());
    }
    notifyListeners();
  }
}
