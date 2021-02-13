import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(Ball());
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  void answer() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  var colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.yellow,
    Colors.indigo,
    Colors.pink,
    Colors.teal
  ];
  var color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.indigo[600],
        ),
        body: Center(
          child: Container(
            child: FlatButton(
              onPressed: () {
                color = colors[Random().nextInt(colors.length)];
                answer();
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ),
      ),
    );
  }
}
