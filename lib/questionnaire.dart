import 'package:flutter/material.dart';

// Widgets
import './question.dart';
import './answer.dart';
import './questionnairefeedback.dart';

class Questionnaire extends StatefulWidget {
  @override
  _QuestionnaireState createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        'Red',
        'Green',
        'Blue'
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        'Dog',
        'Cat',
        'Unicorn'
      ]
    },
    {
      'question': 'Who would you like to hire?',
      'answers': [
        'Jonathan',
        'Jonathan, maybe?',
        'or... Jonathan?'
      ]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuestionnaire() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_questionIndex > _questions.length - 1) {
      return QuestionnaireFeedback(_resetQuestionnaire);
    }

    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      child: Column(
        children: [
          Question(
            _questions[_questionIndex]['question'],
          ),
          ...(_questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(
              answer,
              _answerQuestion
            );
          }).toList(),
        ],
      ),
    );
  }
}