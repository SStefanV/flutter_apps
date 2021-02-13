import 'package:flutter/material.dart';

import '../helper.dart';

class LogSaica extends StatelessWidget {
  var items = [
    {'name': 'Estambrera\nConsejo regulador', 'ora': '05:20  13:15  21:20'},
    {'name': 'C/Estambrera\nRotonda Parada bus', 'ora': '05:22  13:17  21:22'},
    {'name': 'Avda. Club Deportivo\nParada bus', 'ora': '05:27  13:22  21:27'},
    {'name': 'Avda. de Burgos\nFORD', 'ora': '05:30  13:26  21:30'},
    {'name': 'Carmen Medrano\nIguazù', 'ora': '05:32  13:27  21:32'},
    {
      'name': 'Gonzalo de Berceo\nCentro de Salud',
      'ora': '05:33  13:28  21:33'
    },
    {
      'name': 'Gonzalo de Berceo\nMerceria Esther',
      'ora': '05:34  13:19  21:34'
    },
    {'name': 'Gran Via\nRobinson', 'ora': '06:35  14:32  21:35'},
    {'name': 'Gran Via\nCortefiel', 'ora': '06:36  14:31  21:36'},
    {'name': 'Monumento al Labrador\nLogroño', 'ora': '06:38  14:33  21:38'},
    {'name': 'Avda. Colon\nC/Milicias', 'ora': '06:40  14:40  21:40'},
    {'name': 'Avda de la Paz\nBricofer', 'ora': '06:42  14:42  21:42'},
    {'name': 'Avda de la Paz\nKiosko Residencia', 'ora': '06:43  14:43  21:43'},
    {'name': 'Seminario\nParada bus', 'ora': '06:44  14:44  21:44'},
    {'name': 'Saica,\nViana', 'ora': '06:45  14:45  21:45'},
  ];
  String name = 'Logroño-Saica';
  String cod = '368';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
