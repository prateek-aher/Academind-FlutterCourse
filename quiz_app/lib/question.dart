import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;
  Question(this.qText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: Text(
        qText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
