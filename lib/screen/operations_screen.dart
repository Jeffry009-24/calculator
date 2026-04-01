import 'package:calculator/utils/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/utils/calc_history.dart';

class OperationsScreen extends StatelessWidget {
  const OperationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final calc = context.watch<CalculatorController>();
    final history = context.watch<CalcHistory>().history;

    return SizedBox(
      height: 420,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    history[index],
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(top: 30, right: 8, bottom: 8),
            child: Text(
              calc.expression,
              style: const TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}

// Agregar historial de calculos
// Cambiar diseño de botones de multiplicación y division
