import 'package:flutter/material.dart';
import './home.dart';
import 'paginas/crown.dart';
import 'paginas/grafometal.dart';
import 'paginas/iac1Log.dart';
import 'paginas/iac2Log.dart';
import 'paginas/iac3Log.dart';
import 'paginas/inconal.dart';
import 'paginas/logIac1.dart';
import 'paginas/logIac2.dart';
import 'paginas/logIac3.dart';
import 'paginas/logLogista.dart';
import 'paginas/logSaica.dart';
import 'paginas/poligono.dart';
import 'paginas/log_poligono.dart';
import 'paginas/proba.dart';
import 'paginas/resReinaSofia.dart';
import 'paginas/residenciaLaRioja.dart';
import 'paginas/saica.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the MyApp widget.
        '/': (context) => MyApp(),

        '/poligono': (context) => Poligono(),
        '/logPoligono': (context) => LoPoligono(),
        '/res_la_rioja': (context) => ResLaRioja(),
        '/res_r_sofia': (context) => ResReinaSofia(),
        '/crown': (context) => Crown(),
        '/proba': (context) => Proba(),
        '/inconal': (context) => Inconal(),
        '/grafometal': (context) => Grafometal(),
        '/saica': (context) => Saica(),
        '/logSaica': (context) => LogSaica(),
        '/logLogista': (context) => LogLogista(),
        '/logIac1': (context) => LogIac1(),
        '/logIac2': (context) => LogIac2(),
        '/iac1Log': (context) => Iac1Log(),
        '/iac2Log': (context) => Iac2Log(),
        '/logIac3': (context) => LogIac3(),
        '/iac3Log': (context) => Iac3Log(),
      },
    ),
  );
}
