import 'package:flutter/material.dart';
import '../helper.dart';

class LogIac1 extends StatelessWidget {
  var items = [
    {'name': 'Rectorado\nUniversidad', 'ora': '5:20  13:15  21:15'},
    {'name': 'Avda. de la Paz\nResidencia', 'ora': '5:22 13:17 21:17'},
    {'name': 'Avda. de la Paz\n BBVA', 'ora': '5:24  13:18  21:18'},
    {'name': 'Avda. de la Paz\nAyuntamiento', 'ora': '5:26  13:22  21:22'},
    {
      'name': 'Glorieta Doctor Zubia\n(parada bus)',
      'ora': '5:28  13:25  21:25'
    },
    {'name': 'Vara de Rey\nBanco de España', 'ora': '5:30  13:29  21:29'},
    {'name': 'Vara de Rey\nFloristeria Iris', 'ora': '5:32  13:32  21:32'},
    {'name': 'Vara de Rey\nCarrefour', 'ora': '5:34  13:35  21:35'},
    {'name': 'IAC\nEl Sequero', 'ora': '5:50  13:50  21:50'}
  ];
  String name = 'LOGROÑO - IAC 1';
  String cod = '329';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
