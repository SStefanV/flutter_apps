import 'package:flutter/material.dart';
import '../helper.dart';

class Iac2Log extends StatelessWidget {
  var items = [
    {'name': 'IAC\nEl Sequero', 'ora': '6:10  14:10  22:10'},
    {'name': 'Gonzalo de Berceo\nLas Palmeras', 'ora': '06:20  14:22  22:24'},
    {'name': 'Gonzalo de Berceo\nC/Beratua', 'ora': '06:24  14:24  22:24'},
    {'name': 'Gonzalo de Berceo\nFarmacia', 'ora': '06:26  14:26  22:26'},
    {'name': 'Carmen Medrano\nBodega Ojeda', 'ora': '06:28  14:28  22:28'},
    {
      'name': 'Avda. de Burgos\nrotoda Portillejo',
      'ora': '06:30  14:30  22:30'
    },
    {'name': 'Avda. de Burgos\nYagüe', 'ora': '06:32  14:32  22:32'},
    {'name': 'Avda. de Burgos\nPalacio del vino', 'ora': '06:34  14:34  22:34'},
  ];
  String name = 'IAC2 - LOGROÑO';
  String cod = '330';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
