import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandeler;
  final String answerText;
  Answer(this.selectHandeler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandeler,
        style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          onPrimary: Colors.white,
          textStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
