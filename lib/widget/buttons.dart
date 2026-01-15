import 'package:calculator/core/app_colors.dart';
import 'package:calculator/utils/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalcButtons extends StatelessWidget {
  final String value;

  const CalcButtons({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final calc = context.read<CalculatorController>();

    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.secondary,
            minimumSize: Size(100, 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
          ),
          onPressed: () => calc.input(value),
          child: Text(
            value,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
