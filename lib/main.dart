import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;
  var _questionIndex = 0;
  final _questions = [
    {
      'questionText': 'What is your fav color?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 8},
        {'text': 'White', 'score': 10},
      ],
    },
    {
      'questionText': 'What is your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 0},
        {'text': 'Elephant', 'score': 8},
        {'text': 'Lion', 'score': 2},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
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
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(resultScore: _totalScore),
      ),
    );
  }
}
