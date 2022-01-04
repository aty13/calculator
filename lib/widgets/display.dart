import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../providers/result.dart';

class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CupertinoColors.activeBlue,
      //width: double.infinity,
      padding: const EdgeInsets.only(top: 55),
      alignment: Alignment.topRight,
      child: Text(
        Provider.of<Result>(context).result,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
