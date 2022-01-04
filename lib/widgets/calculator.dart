import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './display.dart';
import './buttons.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      // navigationBar: const CupertinoNavigationBar(
      //   middle: Text('Sample Code'),
      // ),
      child: Column(
        children: [
          Display(),
          Divider(),
          Buttons(),
        ],
      ),
    );
  }
}
