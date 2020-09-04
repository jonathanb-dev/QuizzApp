import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerQuestionHandler;

  Answer(this.answer, this.answerQuestionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answer),
        onPressed: answerQuestionHandler,
      ),
    );
  }
}