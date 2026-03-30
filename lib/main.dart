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
  final _questions = ['What is your fav animal?', 'What is your fav color?'];

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
        body: Column(
          children: [
            Question(questionText: _questions[_questionIndex]),
            Answer(title: 'Answer 1', answerQuestion: _answerQuestion),
            Answer(title: 'Answer 2', answerQuestion: _answerQuestion),
            Answer(title: 'Answer 3', answerQuestion: _answerQuestion),
            Answer(title: 'Answer 4', answerQuestion: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
