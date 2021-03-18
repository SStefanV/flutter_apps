import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/constants.dart';
import 'resources.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String horrario = '?';
  String sab = '?';
  String dom = '?';
  String rutaInicial = 'Logroño-Burgos';
  Resurse res = Resurse();
  final _firestore = FirebaseFirestore.instance;

  void getData() async {
    final messages = await _firestore.collection(rutaInicial).get();
    //var my_data = json.decode(res.getRutas());
    setState(() {
      for (var message in messages.docs) {
        horrario = message['luni-vineri'];
        sab = message['sabado'];
        dom = message['domingo'];
      }
      // horrario = my_data[rutaInicial]["luni-vineri"];
      //sab = my_data[rutaInicial]["sabado"];
      //dom = my_data[rutaInicial]["domingo"];
    });
  }

  CupertinoPicker IOSPicker() {
    List<Widget> pickerItems = [];

    for (String ruta in res.getListaRutas()) {
      pickerItems.add(
        Text(
          ruta,
          style: TextStyle(
            letterSpacing: 1.1,
            color: Color(0xfff0c0a3a),
            fontSize: 22,
          ),
        ),
      );
    }

    return CupertinoPicker(
      //useMagnifier: true,

      itemExtent: 32.0,
      //backgroundColor: Colors.,
      onSelectedItemChanged: (selectedIndex) {
        rutaInicial = res.getListaRutas()[selectedIndex];
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
        backgroundColor: Color(0xfff0a0d22),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  rutaInicial,
                  style: TextStyle(
                    color: Color(0xfff0c0a3a),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    'Lunes a Viernes',
                    style: kSubTitleStyle,
                  ),
                ),
                Text(horrario, style: kTextStyle),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 4.0,
                  ),
                  child: Text(
                    'Sabado:',
                    style: kSubTitleStyle,
                  ),
                ),
                Text(sab, style: kTextStyle),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    bottom: 4.0,
                  ),
                  child: Text('Domingo:', style: kSubTitleStyle),
                ),
                Text(
                  dom,
                  style: kTextStyle,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 250.0,
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 10.0),
                child: IOSPicker(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
