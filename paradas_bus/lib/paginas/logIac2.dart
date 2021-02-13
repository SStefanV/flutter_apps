import 'package:flutter/material.dart';
import '../helper.dart';

class LogIac2 extends StatelessWidget {
  var items = [
    {'name': 'Gonzalo de Berceo\nLas Palmeras', 'ora': '5:20  13:15  21:15'},
    {'name': 'Gonzalo de Berceo\nC/Beratua', 'ora': '5:22 13:17 21:22'},
    {'name': 'Gonzalo de Berceo\nFarmacia', 'ora': '5:24  13:19  21:24'},
    {'name': 'Carmen Medrano\nBodega Ojeda', 'ora': '5:26  13:21  21:26'},
    {'name': 'Avda. de Burgos\nrotoda Portillejo', 'ora': '5:28  13:23  21:28'},
    {'name': 'Avda. de Burgos\nYagüe', 'ora': '5:30  13:25  21:30'},
    {'name': 'Avda. de Burgos\nPalacio del vino', 'ora': '5:32  13:27  21:32'},
    {'name': 'IAC\nEl Sequero', 'ora': '5:50  13:50  21:50'}
  ];
  String name = 'LOG-IAC 2';
  String cod = '330';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
