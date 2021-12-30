import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({this.text, this.color});

  // Fields in a Widget subclass are always marked "final".

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      color: color,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 32.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
