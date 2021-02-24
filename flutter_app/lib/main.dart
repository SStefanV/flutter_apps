import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

String rutas =
    '{"Logroño-Burgos":{"luni-vineri":"7:30 13:00 14:45 17:30", "sabado":"7:30 14:45", "domingo":"13:00 17:30"},'
    '"Logroño-Zaragoza": {"luni-vineri":"6:45 9:30 12:30 ", "sabado":"12:30", "domingo":"11:00 16:00 20:00"},'
    '"Logroño-Sto.Domingo":{"luni-vineri": "7:10 7:15 7:30 8:30 13:00 14:45 16:30 17:30", "sabado": "7:30 14:45", "domingo": "13:00 17:00"},'
    '"Burgos-Logroño": {"luni-vineri": "7:30 10:30 15:00 18:00", "sabado": "10:30 18:00", "domingo": "18:00 20:30"},'
    '"Burgos-Zaragoza": {"luni-vineri": "7:30 10:30", "sabado": "10:30", "domingo": "18:00"}}';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> listaRutas = [
    'Logroño-Burgos',
    'Logroño-Zaragoza',
    'Logroño-Sto.Domingo',
    'Burgos-Logroño',
    'Burgos-Zaragoza'
  ];

  var my_data = json.decode(rutas);
  String horrario = '?';
  String sab = '?';
  String dom = '?';

  String rutaInicial = 'Logroño-Burgos';
  void getData() {
    setState(() {
      horrario = my_data[rutaInicial]["luni-vineri"];
      sab = my_data[rutaInicial]["sabado"];
      dom = my_data[rutaInicial]["domingo"];
    });
  }

  CupertinoPicker IOSPicker() {
    List<Widget> pickerItems = [];

    for (String ruta in listaRutas) {
      pickerItems.add(
        Text(
          ruta,
          style: TextStyle(
            color: Color(0xfff0c0a3a),
            fontSize: 22,
          ),
        ),
      );
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      backgroundColor: Colors.lightBlue,
      onSelectedItemChanged: (selectedIndex) {
        print(selectedIndex);
        rutaInicial = listaRutas[selectedIndex];
        getData();
      },
      children: pickerItems,
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('HORARIOS'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  rutaInicial,
                  style: TextStyle(
                    color: Color(0xfff0c0a3a),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'Lunes a Viernes',
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xfff0c0a3a),
                    ),
                  ),
                ),
                Text(
                  horrario,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  child: Text(
                    'Sabado:',
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xfff0c0a3a),
                    ),
                  ),
                ),
                Text(
                  sab,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                    bottom: 5.0,
                  ),
                  child: Text(
                    'Domingo:',
                    style: TextStyle(
                      fontSize: 19,
                      color: Color(0xfff0c0a3a),
                    ),
                  ),
                ),
                Text(
                  dom,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 150.0,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 30.0),
                  color: Colors.lightBlue,
                  child: IOSPicker(),
                ),
              ],
            ),
          ],
        ),
      ),
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
    );
  }
}
