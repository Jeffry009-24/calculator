import 'package:calculator/core/app_colors.dart';
import 'package:flutter/material.dart';

class CalcButtons extends StatelessWidget {
  final String value;
  final Function(String) onTap;

  const CalcButtons({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
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
          onPressed: () => onTap(value),
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
