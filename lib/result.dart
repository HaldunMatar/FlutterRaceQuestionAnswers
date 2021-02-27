import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetQuiz;

  Result(this.resetQuiz, this.resultscore);

  String get resultPhrase {
    String resultString;
    if (resultscore <= 8) {
      resultString = 'you are awesome and innocent !';
    } else if (resultscore <= 12) {
      resultString = 'you are likeable? !';
    } else if (resultscore <= 16) {
      resultString = 'you are ..Strange? !';
    } else {
      resultString = 'you are so bad !';
    }
    print('resultscore=' + resultscore.toString());
    return resultString;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        )),
        TextButton(onPressed: resetQuiz, child: Text('Reset Game')),
      ],
    );
  }
}
