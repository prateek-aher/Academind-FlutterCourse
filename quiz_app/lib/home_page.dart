import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'question.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _qIndex = 0;

  var questions = const [
    {
      'question': 'What is your favorite color?',
      'answers': ['Red', 'Green', 'Blue', 'Pink'],
    },
    {
      'question': 'What is your favorite animal?',
      'answers': ['Cat', 'Dog', 'Snake', 'Elephant'],
    },
    {
      'question': 'What is your Nationality?',
      'answers': ['Greek', 'Indian', 'Irish', 'Scottish'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _qIndex = (_qIndex < questions.length - 1) ? ++_qIndex : _qIndex;
    });
    print('Answered !!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Quiz Mania'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Question(questions[_qIndex]['question']),
          ...(questions[_qIndex]['answers'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList(),
        ],
      ),
    );
  }
}
