import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        elevation: 7,
        color: Colors.pink[300],
        child: Text(
          answer,
          style: TextStyle(color: Colors.pink[50]),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
