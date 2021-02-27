import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        _questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
