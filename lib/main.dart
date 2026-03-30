import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Personality Quiz App'),
          backgroundColor: Colors.lime,
        ),
        body: Column(children: [Text('Hamid Ali'), Text('Flutter Dev')]),
      ),
    );
  }
}
