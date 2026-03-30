import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  final int questionIndex;
  final Function answerQuestion;
  final List<Map<String, Object>> questions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
              return Answer(
                title: answer['text'] as String,
                answerQuestion: () => answerQuestion(answer['score']),
              );
            }),
      ],
    );
  }
}
