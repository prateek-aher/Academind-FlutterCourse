import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  var _qIndex;
  List<Map<String, dynamic>> _qList;
  Function _selectHandler;

  Quiz(this._qList, this._qIndex, this._selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(_qList[_qIndex]['question']),
        ...(_qList[_qIndex]['answers'] as List<String>)
            .map((answer) => Answer(_selectHandler, answer))
            .toList(),
      ],
    );
  }
}
