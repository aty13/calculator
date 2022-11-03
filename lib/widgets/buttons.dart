import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator/providers/result.dart';
import 'package:calculator/widgets/button.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Result buttonProvider = Provider.of<Result>(context, listen: false);
    return Column(
      children: [
        Row(
          children: [
            CalculatorButton(
              label: 'C',
              color: Colors.grey,
              onTap: () => buttonProvider.clear(),
            ),
            CalculatorButton(
              label: '+/-',
              color: Colors.grey,
              onTap: () {},
            ),
            CalculatorButton(
              label: '%',
              color: Colors.grey,
              onTap: () {},
            ),
            CalculatorButton(
              label: '/',
              color: Colors.orange,
              onTap: () => buttonProvider.operand('/'),
            )
          ],
        ),
        Row(
          children: [
            CalculatorButton(
                label: '7', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(7)),
            CalculatorButton(
                label: '8', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(8)),
            CalculatorButton(
                label: '9', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(9)),
            CalculatorButton(
                label: '*', color: Colors.orange, onTap: () => buttonProvider.operand('*'))
          ],
        ),
        Row(
          children: [
            CalculatorButton(
                label: '4', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(4)),
            CalculatorButton(
                label: '5', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(5)),
            CalculatorButton(
                label: '6', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(6)),
            CalculatorButton(
                label: '-', color: Colors.orange, onTap: () => buttonProvider.operand('-'))
          ],
        ),
        Row(
          children: [
            CalculatorButton(
                label: '1', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(1)),
            CalculatorButton(
                label: '2', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(2)),
            CalculatorButton(
                label: '3', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(3)),
            CalculatorButton(
                label: '+', color: Colors.orange, onTap: () => buttonProvider.operand('+'))
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 90,
            ),
            CalculatorButton(
                label: '0', color: Colors.grey.shade800, onTap: () => buttonProvider.addNum(0)),
            CalculatorButton(
                label: ',', color: Colors.grey.shade800, onTap: () => buttonProvider.addDot()),
            CalculatorButton(
                label: '=', color: Colors.orange, onTap: () => buttonProvider.calculate()),
          ],
        ),
      ],
    );
  }
}
