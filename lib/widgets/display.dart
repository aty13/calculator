import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:calculator/providers/result.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(
        top: 75,
        right: 35,
      ),
      alignment: Alignment.topRight,
      child: Text(
        Provider.of<Result>(context).result,
        style: const TextStyle(
          fontSize: 48,
          color: Colors.white,
        ),
      ),
    );
  }
}
