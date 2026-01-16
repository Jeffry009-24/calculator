import 'package:calculator/utils/operators.dart';

List<String> toRPN(List<String> tokens) {
  final output = <String>[];
  final stack = <String>[];

  for (var token in tokens) {
    if (double.tryParse(token) != null) {
      output.add(token);
    } else if (operators.containsKey(token)) {
      while (stack.isNotEmpty &&
          operators.containsKey(stack.last) &&
          operators[stack.last]!.precedence >= operators[token]!.precedence) {
        output.add(stack.removeLast());
      }
      stack.add(token);
    }
  }

  while (stack.isNotEmpty) {
    output.add(stack.removeLast());
  }
  return output;
}
