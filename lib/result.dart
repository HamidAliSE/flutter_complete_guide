import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.resultScore,
    required this.restartQuiz,
  });

  final int resultScore;
  final VoidCallback restartQuiz;

  String get resultPrompt {
    String resultText;
    if (resultScore < 1) {
      resultText = 'You are SO Bad!';
    } else if (resultScore < 10) {
      resultText = 'You are ... Strange!';
    } else if (resultScore < 20) {
      resultText = 'You are Nice!';
    } else {
      resultText = 'You are Innocent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPrompt,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: restartQuiz, child: Text('Restart Quiz!')),
        ],
      ),
    );
  }
}
