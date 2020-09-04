import 'package:flutter/material.dart';

class QuestionnaireFeedback extends StatelessWidget {
  final Function resetQuestionnaireHandler;

  QuestionnaireFeedback(this.resetQuestionnaireHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 15,
            ),
            width: double.infinity,
            child: Text(
              'Thank you!',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Reset questionnaire'),
              onPressed: resetQuestionnaireHandler,
            ),
          ),
        ],
      ),
    );
  }
}