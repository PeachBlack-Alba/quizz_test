import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 6) {
      resultText = "You are Gryffindor";
    } else if (resultScore <= 12) {
      resultText = "You are Slytherin";
    } else if (resultScore <= 18) {
      resultText = "You are Ravenclaw";
    } else {
      resultText = "You are Hufflepuff";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
