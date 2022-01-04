import 'package:flutter/cupertino.dart';

class CalcButton extends StatefulWidget {
  String label;
  VoidCallback onTap;
  //Color color;

  CalcButton({
    Key? key,
    required this.label,
    required this.onTap,
    //required this.color,
  }) : super(key: key);

  @override
  _CalcButtonState createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 90,
      width: 90,
      child: CupertinoButton.filled(
        //alignment: Alignment.center,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.label,
            textAlign: TextAlign.center,
          ),
        ),
        onPressed: widget.onTap,
      ),
    );
  }
}
