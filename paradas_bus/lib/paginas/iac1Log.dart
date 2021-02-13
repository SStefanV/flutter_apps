import 'package:flutter/material.dart';
import '../helper.dart';

class Iac1Log extends StatelessWidget {
  var items = [
    {'name': 'IAC\nEl Sequero', 'ora': '6:10  14:10  22:10'},
    {'name': 'Rectorado\nUniversidad', 'ora': '6:22  14:22  22:22'},
    {'name': 'Avda. de la Paz\nResidencia', 'ora': '6:24  14:24  22:24'},
    {'name': 'Avda. de la Paz\n BBVA', 'ora': '6:26  14:26  22:26'},
    {'name': 'Avda. de la Paz\nAyuntamiento', 'ora': '6:28  14:28  22:28'},
    {
      'name': 'Glorieta Doctor Zubia\n(parada bus)',
      'ora': '6:30  14:30  22:30'
    },
    {'name': 'Vara de Rey\nBanco de España', 'ora': '6:32  14:32  22:32'},
    {'name': 'Vara de Rey\nFloristeria Iris', 'ora': '6:34  14:34  22:34'},
    {'name': 'Vara de Rey\nCarrefour', 'ora': '6:36  14:36  22:36'},
  ];
  String name = 'IAC1 - LOGROÑO';
  String cod = '329';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
