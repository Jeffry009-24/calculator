import 'package:calculator/utils/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OperationsScreen extends StatelessWidget {
  const OperationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calc = context.watch<CalculatorController>();

    return Container(
      padding: const EdgeInsets.only(top: 350),
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        child: Text(
          calc.expression,
          style: const TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
