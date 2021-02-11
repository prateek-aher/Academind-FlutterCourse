import 'package:flutter/material.dart';
import 'package:flutter_assignment/mytext.dart';

class TextControl extends StatelessWidget {
  TextControl({this.text, this.handler});

  final String text;
  final Function handler;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText(text),
          RaisedButton(
            color: Colors.black,
            onPressed: handler,
            child: Text(
              'Change',
              style: TextStyle(fontSize: 36.0, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
