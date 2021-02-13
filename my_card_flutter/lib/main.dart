import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/face.jpg'),
                //backgroundColor: Colors.red,
              ),
              Text(
                'Raku Terminatu\'',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.teal[100],
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 150,
                height: 20,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.teal[900],
                  ),
                  title: Text('+34 600 000 000',
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontSize: 20,
                          fontFamily: 'SourceSansPro')),
                ),
              ),
              Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.teal[900],
                  ),
                  title: Text('jon@gmail.com',
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontSize: 20,
                          fontFamily: 'SourceSansPro')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
