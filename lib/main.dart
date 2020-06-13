import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        "questionText":
            "You’ve made it to Hogwarts, which means you’ve already bought a wand from Ollivander’s. What material is at its core?",
        "answers": [
          {"text": "Phoenix Feather", "score": 2},
          {"text": "Dragon Heartstring", "score": 4},
          {"text": "Unicorn Hair", "score": 6}
        ],
      },
      {
        "questionText":
            "During the end-of-year exams, you notice that one of your classmates was using an enchanted quill. You come top of the class anyway, but they are second. What do you do?",
        "answers": [
          {
            "text":
                "Tell the professor immediately – cheating is wrong, no matter what.",
            "score": 2
          },
          {
            "text":
                "Nothing, but if I hadn't come top of the class, I'd definitely tell the professor.",
            "score": 4
          },
          {
            "text":
                "Encourage the other student to admit what they'd done to the professor.",
            "score": 6
          },
          {
            "text":
                "Give them a high five for managing to sneak the quill into the exam.",
            "score": 8
          },
        ],
      },
      {
        "questionText": "You would be most hurt if a person called you...",
        "answers": [
          {"text": "Weak", "score": 2},
          {"text": "Ignorant", "score": 4},
          {"text": "Unkind", "score": 6},
          {"text": "Boring", "score": 8}
        ],
      },
      // {
      //   "questionText": "",
      //   "answers": [],
      // },
      // {
      //   "questionText": "",
      //   "answers": [],
      // },
      // {
      //   "questionText": "",
      //   "answers": [],
      // }
    ];
    var questionIndex = 0;
    var totalScore = 0;

    void resetQuiz() {
      setState(() {
        questionIndex = 0;
        totalScore = 0;
      });
    }

    void answerQuestion(int score) {
      totalScore += score;
      // totalScore += score; = //totalScore = totalScore + score;

      setState(() {
        questionIndex = questionIndex + 1;
      });
      print(questionIndex);
      if (questionIndex < questions.length) {
        print("We have way more questions");
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quizz"),
          Theme(
  // Create a unique theme with "ThemeData"
  data: ThemeData(
    accentColor: Colors.yellow,
  ),
        ),
        
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
