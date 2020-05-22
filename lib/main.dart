import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
        ),
        body: Column(
          children: [
            Text("Question"),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
