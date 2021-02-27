import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const questions = const [
    {
      'questiontxt': 'what\'s favourite spor236',
      'answers': ['Black', 'red', 'white', 'green']
    },
    {
      'questiontxt': 'what\'s favourite anilamls',
      'answers': ['Rabitte', 'lion', 'fox', 'lion']
    },
    {
      'questiontxt': 'what\'s favourite spor',
      'answers': ['footbull', 'basketbool', 'no', 'tenis']
    },
    {
      'questiontxt': 'what\'s favourite spor',
      'answers': ['computer game ', 'war game ', 'Race', 'guess']
    }
  ];

  var _indexQuestion = 0;

  void _answerQuestion() {
    setState(() {
      _indexQuestion += 1;
    });

    print(_indexQuestion);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('app bar '),
        ),
        body: _indexQuestion < questions.length
            ? Column(
                children: [
                  Question(questions[_indexQuestion]['questiontxt']),
                  ...(questions[_indexQuestion]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  })
                ],
              )
            : Text('you did finished '),
      ),
    );
  }
}
