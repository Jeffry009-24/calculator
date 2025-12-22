import 'package:calculator/screen/buttons_screen.dart';
import 'package:calculator/screen/operations_screen.dart';
import 'package:flutter/material.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

// 4 columnas, 5 filas
class _HomeScreemState extends State<HomeScreem> {
  final TextEditingController _controller = TextEditingController();

  void deleteLast() {
    if (_controller.text.isNotEmpty) {
      _controller.text = _controller.text.substring(
        0,
        _controller.text.length - 1,
      );
    }
  }

  void evaluate() {
    if (_controller.text.isNotEmpty) {
      _controller.text = 'Evaluar la expresión';
    }
  }

  void addValue(String value) {
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: _controller.text.length),
    );

    if (value == 'C') {
      _controller.text = '';
    } else if (value == '<-') {
      deleteLast();
    } else if (value == '=') {
      evaluate();
    } else {
      _controller.text += value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OperationsScreen(controller: _controller),
        ButtonsScreen(onButtonPressed: addValue),
      ],
    );
  }
}
