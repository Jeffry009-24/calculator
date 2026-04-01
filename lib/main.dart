import 'package:calculator/core/app_colors.dart';
import 'package:calculator/screen/home_screen.dart';
import 'package:calculator/utils/calc_history.dart';
import 'package:calculator/utils/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CalcHistory()),

        ChangeNotifierProxyProvider<CalcHistory, CalculatorController>(
          create: (_) => CalculatorController(CalcHistory()),
          update: (_, history, controller) {
            controller!.history = history;
            return controller;
          },
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: AppColors.background, body: HomeScreem()),
    );
  }
}
