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
        body: Text("this is my default text"),
      ),
    );
  }
}
