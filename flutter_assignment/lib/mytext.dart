import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText(this.text);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 42.0,
      ),
    );
  }
}
