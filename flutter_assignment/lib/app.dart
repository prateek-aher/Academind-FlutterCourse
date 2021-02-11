import 'package:flutter/material.dart';
import 'package:flutter_assignment/textcontrol.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> text = ['Hippie', 'Banana'];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Assignment'),
          centerTitle: true,
        ),
        body: TextControl(text: text[index], handler: changeText),
      ),
    );
  }

  void changeText() {
    setState(() {
      index = (index == 0) ? 1 : 0;
    });
  }
}
