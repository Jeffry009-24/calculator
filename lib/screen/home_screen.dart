import 'package:calculator/screen/buttons_screen.dart';
import 'package:calculator/screen/operations_screen.dart';
import 'package:calculator/utils/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreem extends StatefulWidget {
  const HomeScreem({super.key});

  @override
  State<HomeScreem> createState() => _HomeScreemState();
}

// 4 columnas, 5 filas
class _HomeScreemState extends State<HomeScreem> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CalculatorController(),
      child: Column(children: const [OperationsScreen(), ButtonsScreen()]),
    );
  }
}
