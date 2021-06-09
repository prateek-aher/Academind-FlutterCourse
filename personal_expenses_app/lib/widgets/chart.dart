import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: Container(
        width: double.infinity,
        child: Text(
          'Chart',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      elevation: 5.0,
    );
  }
}
