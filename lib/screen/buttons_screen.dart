import 'package:calculator/core/app_colors.dart';
import 'package:calculator/widget/buttons.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  final Function(String) onButtonPressed;
  const ButtonsScreen({super.key, required this.onButtonPressed});

  @override
  State<ButtonsScreen> createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalcButtons(value: 'C', onTap: widget.onButtonPressed),
                    CalcButtons(value: '<-', onTap: widget.onButtonPressed),
                    CalcButtons(value: '%', onTap: widget.onButtonPressed),
                    CalcButtons(value: '/', onTap: widget.onButtonPressed),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalcButtons(value: '7', onTap: widget.onButtonPressed),
                    CalcButtons(value: '8', onTap: widget.onButtonPressed),
                    CalcButtons(value: '9', onTap: widget.onButtonPressed),
                    CalcButtons(value: '*', onTap: widget.onButtonPressed),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalcButtons(value: '4', onTap: widget.onButtonPressed),
                    CalcButtons(value: '5', onTap: widget.onButtonPressed),
                    CalcButtons(value: '6', onTap: widget.onButtonPressed),
                    CalcButtons(value: '-', onTap: widget.onButtonPressed),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalcButtons(value: '1', onTap: widget.onButtonPressed),
                    CalcButtons(value: '2', onTap: widget.onButtonPressed),
                    CalcButtons(value: '3', onTap: widget.onButtonPressed),
                    CalcButtons(value: '+', onTap: widget.onButtonPressed),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalcButtons(value: '<>', onTap: widget.onButtonPressed),
                    CalcButtons(value: '0', onTap: widget.onButtonPressed),
                    CalcButtons(value: '.', onTap: widget.onButtonPressed),
                    CalcButtons(value: '=', onTap: widget.onButtonPressed),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
