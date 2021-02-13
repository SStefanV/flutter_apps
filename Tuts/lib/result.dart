import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resulPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome!!';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are so bad!!!!';
    } else {
      resultText = 'You are the devil!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resulPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
