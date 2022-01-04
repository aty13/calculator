import 'package:calculator/providers/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import './widgets/calculator.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Result(),
      child: CupertinoApp(
        title: 'Flutter Demo',
        home: Calculator(),
      ),
    );
  }
}
