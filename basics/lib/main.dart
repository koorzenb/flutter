import 'package:flutter/material.dart';

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
            Text(questions[questionIndex]),
            ElevatedButton(
              onPressed: answerQuestions,
              child: Text("Answer 1"),
            ),
            RaisedButton(
                child: Text("Answer 2"),
                onPressed: () => print('Answer 2 chosen')),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () => print('Answer 3 chosen'),
            ),
          ],
        ),
      ),
    );
  }
}
