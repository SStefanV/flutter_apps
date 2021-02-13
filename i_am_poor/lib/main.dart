import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: IamPoor(),
    ));

class IamPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('IAmPoor'),
        centerTitle: true,
      ),
      body: Center(
        child: Image(image: AssetImage('images/coal.jpg')),
      ),
    );
  }
}
