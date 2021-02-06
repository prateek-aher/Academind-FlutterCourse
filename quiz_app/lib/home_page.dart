import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'question.dart';
import 'result.dart';
import 'quiz.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _qIndex = 0;

  var _questions = const [
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
    if (_qIndex < _questions.length) {
      setState(() {
        _qIndex++;
      });
    }
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
      body: (_qIndex < _questions.length)
          ? Quiz(_questions, _qIndex, _answerQuestion)
          : Result(),
    );
  }
}
