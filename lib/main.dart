import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      print("Anwser choosen");
    }

    var questions = ["What is your fav", "Where something"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
        ),
        body: Column(
          children: [
            Text(
              questions[0],
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
