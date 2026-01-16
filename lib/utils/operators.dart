class Operator {
  final String symbol;
  final int precedence;
  final double Function(double, double) apply;

  Operator(this.symbol, this.precedence, this.apply);
}

final operators = {
  '+': Operator('+', 1, (a, b) => a + b),
  '-': Operator('-', 1, (a, b) => a - b),
  '*': Operator('*', 1, (a, b) => a * b),
  '/': Operator('/', 1, (a, b) => a / b),
};
