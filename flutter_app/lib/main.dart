import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[700],
      ),
      body: Center(
          child: IconButton(
        onPressed: () {
          print('@');
        },
        icon: Icon(
          Icons.alternate_email,
          color: Colors.red,
        ),
      )
          //
          // RaisedButton.icon(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.mail,
          //
          //   ),
          //   label: Text(
          //     'Mail'
          //   ),
          //   color: Colors.amber,
          //
          // ),

          //   Icon(
          //   Icons.airport_shuttle,
          //   color: Colors.blueAccent,
          //   size: 60.0,
          // ),
          //Image.asset('assets/g2.jpg')
          //Image.network('https://images.unsplash.com/photo-1531306728370-e2ebd9d7bb99?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),

          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[700],
      ),
    );
  }
}
