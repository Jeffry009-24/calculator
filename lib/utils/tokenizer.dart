class MathTokenizer {
  List<String> tokenize(String expression) {
    final List<String> tokens = [];
    String buffer = '';

    for (var i = 0; i < expression.length; i++) {
      final char = expression[i];

      if (RegExp(r'[0-9.]').hasMatch(char)) {
        buffer += char;
      } else if (RegExp(r'[+\-*/()]').hasMatch(char)) {
        if (buffer.isNotEmpty) {
          tokens.add(buffer);
          buffer = '';
        }
        tokens.add(char);
      }
    }
    if (buffer.isNotEmpty) {
      tokens.add(buffer);
    }
    return tokens;
  }
}
