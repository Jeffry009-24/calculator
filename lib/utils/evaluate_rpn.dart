import 'package:calculator/utils/operators.dart';

double evaluateRPN(List<String> rpn) {
  final stack = <double>[];

  for (var token in rpn) {
    if (double.tryParse(token) != null) {
      stack.add(double.parse(token));
      continue;
    }

    if (!operators.containsKey(token)) {
      throw Exception('Error');
    }

    if (stack.length < 2) {
      throw Exception('EXpresión inválida');
    }

    final b = stack.removeLast();
    final a = stack.removeLast();

    if (token == '/' && b == 0) {
      throw Exception('División entre cero');
    }
    final result = operators[token]!.apply(a, b);
    stack.add(result);
  }

  if (stack.length != 1) {
    throw Exception('Error');
  }
  return stack.single;
}
