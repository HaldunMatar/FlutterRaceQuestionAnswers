import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

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
      'questiontxt': 'What\'s favourite colors',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 0},
        {'text': 'white', 'score': 0},
        {'text': 'blue', 'score': 0},
      ]
    },
    {
      'questiontxt': 'What\'s favourite animals',
      'answers': [
        {'text': 'lion', 'score': 0},
        {'text': 'rabbit', 'score': 10},
        {'text': 'cat', 'score': 0},
        {'text': 'cow', 'score': 0},
      ]
    },
    {
      'questiontxt': 'What\'s favourite spors',
      'answers': [
        {'text': 'tenis', 'score': 0},
        {'text': 'volyboll', 'score': 0},
        {'text': 'basketboll', 'score': 10},
        {'text': 'running', 'score': 0},
      ]
    },
    {
      'questiontxt': 'what\'s favourite books',
      'answers': [
        {'text': 'stories', 'score': 0},
        {'text': 'math', 'score': 0},
        {'text': 'hosrical', 'score': 0},
        {'text': 'Science', 'score': 10},
      ]
    }
  ];

  var _indexQuestion = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _indexQuestion = 0;
      _totalScore = 0;
    });
    print('_resetQuiz');
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
          title: Text('My first App  '),
        ),
        body: _indexQuestion < questions.length
            ? Quiz(
                questions: questions,
                indexQuestion: _indexQuestion,
                answerQuestion: _answerQuestion)
            : Result(_resetQuiz, _totalScore),
      ),
    );
  }
}
