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


// ['5', '+', '2', '*', '3']

// output = [5]
// stack = [+2]

// por cada elemento en la lista de tokens vamos a: evaluar, si intetntamos cambiar ese elemento a decimal y este es distinto de null entonces lo agregamos a la lista uotput. sino, revisaremos si el token está dentro de los operadores
// si lo está vamos a; mientras el stack no esté vacío y el último elemento del stack sea un operador, y la precedencia del operador dentro del stack sea mayor que la precedencia de el operador dentro de el token vamos a: eliminar el ultimo elemento del stack y agregarlo al output