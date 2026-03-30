import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = [
    {
      'questionText': 'What is your fav color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your fav animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
          backgroundColor: Colors.lime,
        ),
        body: _questionIndex < _questions.length
            ? Column(
                children: [
                  Question(
                    questionText:
                        _questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(_questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                        return Answer(
                          title: answer,
                          answerQuestion: _answerQuestion,
                        );
                      }),
                ],
              )
            : Text('You did it!'),
      ),
    );
  }
}
