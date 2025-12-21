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
  @override
  Widget build(BuildContext context) {
    return Column(children: [OperationsScreen(), ButtonsScreen()]);
  }
}
