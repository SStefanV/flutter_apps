import 'package:flutter/material.dart';
import '../helper.dart';

class LogIac3 extends StatelessWidget {
  var items = [
    {'name': 'Piqueras\nReterioja', 'ora': '5:20  13:15  21:15'},
    {'name': 'Cascajos 1\nParada bus', 'ora': '5:22 13:17 21:17'},
    {
      'name': 'Duques de Najera\ncole. Madrid-Manila',
      'ora': '5:24  13:18  21:18'
    },
    {'name': 'Duques de Najera\nrotonda Chile', 'ora': '5:26  13:22  21:22'},
    {'name': 'Duques de Najera\nBar Avenida', 'ora': '5:28  13:25  21:25'},
    {
      'name': 'Avda. Club Deportivo\nP.bus antes de NH',
      'ora': '5:30  13:29  21:29'
    },
    {'name': 'Edificio Electra\nParada Bus', 'ora': '5:32  13:32  21:32'},
    {'name': 'IAC\nEl Sequero', 'ora': '5:50  13:50  21:50'}
  ];
  String name = 'LOGROÑO - IAC3';
  String cod = '331';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
