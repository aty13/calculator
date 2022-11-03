import 'package:flutter/material.dart';
import 'package:calculator/widgets/calculator.dart';

import 'package:provider/provider.dart';
import 'package:calculator/providers/result.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Result(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Calculator',
        home: Calculator(),
      ),
    );
  }
}
