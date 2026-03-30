import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.resultScore});

  final int resultScore;

  String get resultPrompt {
    String resultText;
    if (resultScore < 1) {
      resultText = 'You are SO Bad!';
    } else if (resultScore < 10) {
      resultText = 'You are ... Strange!';
    } else if (resultScore < 20) {
      resultText = 'You are Nice';
    } else {
      resultText = 'You are Innocent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      resultPrompt,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
