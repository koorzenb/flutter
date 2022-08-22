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
  final questions = const [
    {
      "questionText": 'What\'s your favorite color?',
      "answers": ['Black', 'Red', 'White']
    },
    {
      "questionText": 'What\'s your favorite animal?',
      "answers": ['Bear', 'puma', 'dolphin']
    }
  ];

  int _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {}

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ontext) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: _questionIndex < questions.length
              ? Column(
                  children: [
                    Question(
                        questions[_questionIndex]["questionText"] as String),
                    ...(questions[_questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text("You didit!"),
                )),
    );
  }
}
