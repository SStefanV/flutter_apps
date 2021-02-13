import 'package:flutter/material.dart';
import '../helper.dart';

class Iac3Log extends StatelessWidget {
  var items = [
    {'name': 'IAC\nEl Sequero', 'ora': '6:10  14:10  22:10'},
    {'name': 'Piqueras\nReterioja', 'ora': '06:20  14:22  22:24'},
    {'name': 'Cascajos 1\nParada bus', 'ora': '06:24  14:24  22:24'},
    {
      'name': 'Duques de Najera\ncole. Madrid-Manila',
      'ora': '06:26  14:26  22:26'
    },
    {'name': 'Duques de Najera\nrotonda Chile', 'ora': '06:28  14:28  22:28'},
    {'name': 'Duques de Najera\nBar Avenida', 'ora': '06:30  14:30  22:30'},
    {
      'name': 'Avda. Club Deportivo\nP.bus antes de NH',
      'ora': '06:32  14:32  22:32'
    },
    {'name': 'Edificio Electra\nParada Bus', 'ora': ' 06:34  14:34  22:34'},
  ];
  String name = 'IAC3 - LOGROÑO';
  String cod = '331';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
