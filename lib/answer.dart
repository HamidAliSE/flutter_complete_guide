import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.title, required this.answerQuestion});

  final String title;
  final VoidCallback answerQuestion;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: answerQuestion, child: Text(title));
  }
}
