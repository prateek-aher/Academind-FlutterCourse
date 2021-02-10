import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int _qIndex;
  final List<Map<String, dynamic>> _qList;
  final Function _selectHandler;

  Quiz(this._qList, this._qIndex, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(_qList[_qIndex]['question']),
        ...(_qList[_qIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) =>
                Answer(() => _selectHandler(answer['score']), answer['text']))
            .toList(),
      ],
    );
  }
}
