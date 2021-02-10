import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int testScore;
  static const k = 24.0;

  Result(this.testScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'You got',
            style: TextStyle(fontSize: k),
            textAlign: TextAlign.center,
          ),
          Text(
            '$testScore',
            style: TextStyle(fontSize: 64),
          ),
          Image.asset('images/powerful.png'),
          Text(
            'Hoorray!!\nYou nailed that quiz.\n You\'re a Badass.',
            style: TextStyle(fontSize: k),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
