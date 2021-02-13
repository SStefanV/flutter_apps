import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTexT;

  Question(this.questionTexT);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        questionTexT,
        style: TextStyle(
          fontSize: 28.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
