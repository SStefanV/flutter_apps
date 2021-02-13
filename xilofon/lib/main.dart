import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xilofon());

class Xilofon extends StatelessWidget {
  Widget buildButton({Color color, int num}) {
    return Expanded(
      child: FlatButton(
          padding: EdgeInsets.all(0),
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$num.wav');
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color: Colors.red, num: 1),
              buildButton(color: Colors.orange, num: 2),
              buildButton(color: Colors.yellow, num: 3),
              buildButton(color: Colors.green, num: 4),
              buildButton(color: Colors.teal, num: 5),
              buildButton(color: Colors.blue, num: 6),
              buildButton(color: Colors.indigo, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
