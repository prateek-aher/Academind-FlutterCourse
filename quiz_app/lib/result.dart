import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int testScore;
  static const k = 24.0;
  final Function _restart;

  Result(this.testScore, this._restart);
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
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: FlatButton(
              // color: Colors.transparent,
              onPressed: _restart,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.refresh,
                    color: Colors.blue,
                  ),
                  Text(
                    'Restart quiz',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: k,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
