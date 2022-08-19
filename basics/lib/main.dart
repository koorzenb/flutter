import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ontext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text("this is my default text"),
            ElevatedButton(
              onPressed: () => print('Answer chosen'),
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
