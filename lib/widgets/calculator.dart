import 'package:flutter/material.dart';

import 'package:calculator/widgets/buttons.dart';
import 'package:calculator/widgets/display.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: const [
            Spacer(),
            Display(),
            Divider(),
            Buttons(),
          ],
        ),
      ),
    );
  }
}
