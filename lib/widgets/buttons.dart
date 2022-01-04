import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import './button.dart';
import '../providers/result.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Result buttonProvider = Provider.of<Result>(context, listen: false);
    return Column(
      children: [
        Row(children: [
          CalcButton(label: 'C', onTap: () => buttonProvider.clear()),
          CalcButton(label: '/-', onTap: () {}),
          CalcButton(label: '%', onTap: () {}),
          CalcButton(label: '/', onTap: () => buttonProvider.operand('/'))
        ]),
        Row(children: [
          CalcButton(label: '7', onTap: () => buttonProvider.addNum(7)),
          CalcButton(label: '8', onTap: () => buttonProvider.addNum(8)),
          CalcButton(label: '9', onTap: () => buttonProvider.addNum(9)),
          CalcButton(label: '*', onTap: () => buttonProvider.operand('*'))
        ]),
        Row(children: [
          CalcButton(label: '4', onTap: () => buttonProvider.addNum(4)),
          CalcButton(label: '5', onTap: () => buttonProvider.addNum(5)),
          CalcButton(label: '6', onTap: () => buttonProvider.addNum(6)),
          CalcButton(label: '-', onTap: () => buttonProvider.operand('-'))
        ]),
        Row(children: [
          CalcButton(label: '1', onTap: () => buttonProvider.addNum(1)),
          CalcButton(label: '2', onTap: () => buttonProvider.addNum(2)),
          CalcButton(label: '3', onTap: () => buttonProvider.addNum(3)),
          CalcButton(label: '+', onTap: () => buttonProvider.operand('+'))
        ]),
        Row(children: [
          CalcButton(label: '0', onTap: () => buttonProvider.addNum(0)),
          CalcButton(label: ',', onTap: () => buttonProvider.addDot()),
          CalcButton(label: '=', onTap: () => buttonProvider.calculate()),
        ]),
      ],
    );
  }
}
