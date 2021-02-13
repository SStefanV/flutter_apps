import 'package:flutter/material.dart';
import '../helper.dart';

class Crown extends StatelessWidget {
  var items = [
    {'name': 'Duques de Najera\nBar Avenida', 'ora': '5:20  13:15  21:20'},
    {'name': 'C/ Murrieta\nBar Iguazú', 'ora': '5:22 13:17 21:22'},
    {'name': 'Gonzalo de Berceo\nMerceria Esther', 'ora': '5:24  13:19  21:24'},
    {'name': 'C/ Chile\ncon Perez Galdos', 'ora': '5:26  13:21  21:26'},
    {
      'name': 'Duques De Najera\nParada Bus Linea 5',
      'ora': '5:28  13:23  21:28'
    },
    {'name': 'Vara de Rey\nParada bus Lidl\n', 'ora': '5:30  13:25  21:30'},
    {'name': 'Avda. Colon\ncon C/Viallamediana', 'ora': '5:32  13:27  21:32'},
    {'name': 'Avda. de la Paz\nAyuntamiento', 'ora': '5:34  13:29  21:34'},
    {'name': 'Avda de la Paz 88\nBankia', 'ora': '5:36  13:31  21:36'},
    {'name': 'Avda. de la Paz\nSeminario', 'ora': '5:40  13:35  21:40'},
    {'name': 'Crown Cork\nPol Sequero', 'ora': '5:50  13:50  21:50'}
  ];
  String name = 'CROWN';
  String cod = '342';

  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
