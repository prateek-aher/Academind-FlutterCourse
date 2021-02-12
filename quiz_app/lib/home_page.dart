import 'package:flutter/material.dart';
import 'result.dart';
import 'quiz.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int totalScore = 0;
  List<Map<String, dynamic>> questionsList = const [
    {
      'question': 'What is your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': -1},
        {'text': 'Blue', 'score': -1},
        {'text': 'Pink', 'score': -1}
      ],
    },
    {
      'question': 'What is your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': -1},
        {'text': 'Dog', 'score': 1},
        {'text': 'Snake', 'score': -1},
        {'text': 'Elephant', 'score': -1}
      ],
    },
    {
      'question': 'What is your Nationality?',
      'answers': [
        {'text': 'Greek', 'score': -1},
        {'text': 'Indian', 'score': -1},
        {'text': 'Irish', 'score': 1},
        {'text': 'Scottish', 'score': -1}
      ],
    },
  ];

  void answerQuestion(int score) {
    totalScore += score;

    if (index < questionsList.length) {
      setState(() {
        index++;
      });
    }
  }

  void _restart() {
    setState(() {
      index = totalScore = 0;
    });
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
      body: (index < questionsList.length)
          ? new Quiz(questionsList, index, answerQuestion)
          : Result(totalScore, _restart),
    );
  }
}
