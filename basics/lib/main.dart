import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

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
  final _questions = const [
    {
      "questionText": 'What\'s your favorite color?',
      "answers": [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 2},
        {'text': 'White', 'score': 3}
      ]
    },
    {
      "questionText": 'What\'s your favorite animal?',
      "answers": [
        {'text': 'Bear', 'score': 1},
        {'text': 'puma', 'score': 2},
        {'text': 'dolphin', 'score': 3}
      ]
    }
  ];

  int _questionIndex = 0;
  int score = 0;

  void _answerQuestion(int newScore) {
    if (_questionIndex < _questions.length) {}

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    score += newScore;
  }

  @override
  Widget build(BuildContext ontext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(score),
      ),
    );
  }
}
