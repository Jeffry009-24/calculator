import 'package:calculator/core/error_type.dart';

class CalcError {
  final CalcErrorType type;
  final String message;

  CalcError(this.type, this.message);
}
