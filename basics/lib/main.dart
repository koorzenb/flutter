import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext ontext) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'test'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
