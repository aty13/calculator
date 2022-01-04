import 'package:flutter/material.dart';

class Result with ChangeNotifier {
  String result = '0';
  //late String _result;
  late double num1;
  late double num2;
  late String operandSymbol;
  bool operandPressed = false;

  void addNum(int num) {
    if (result == '0') {
      result = num.toString();
    } else if (operandPressed == true) {
      result = num.toString();
      operandPressed = false;
    } else {
      result = result + num.toString();
    }

    notifyListeners();
  }

  void operand(String operand) {
    num1 = double.parse(result);
    operandPressed = true;
    operandSymbol = operand;

    num2 = double.parse(result);

    operandPressed = true;
    operandSymbol = operand;
  }

  void clear() {
    result = '0';
    notifyListeners();
  }

  void calculate() {
    num2 = double.parse(result);
    if (operandSymbol == '+') {
      result = (num1 + num2).toString();
    } else if (operandSymbol == '-') {
      result = (num1 - num2).toString();
    } else if (operandSymbol == '*') {
      result = (num1 * num2).toString();
    } else if (operandSymbol == '/') {
      result = (num1 / num2).toString();
    }
    operandPressed = false;
    notifyListeners();
  }

  void addDot() {
    if (result[-1] == '.') {
      return;
    } else {
      result = result + ',';
    }
  }
}
