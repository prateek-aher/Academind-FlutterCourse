import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/powerful.png'),
          Text('Hoorray!!'),
          Text('You nailed that quiz.\n You\'re a Badass.'),
        ],
      ),
    );
  }
}
