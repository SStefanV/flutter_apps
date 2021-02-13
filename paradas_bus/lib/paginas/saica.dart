import 'package:flutter/material.dart';

import '../helper.dart';

class Saica extends StatelessWidget {
  var items = [
    {'name': 'Saica,\nViana', 'ora': '06:10  14:10  21:10'},
    {'name': 'Seminario\nParada bus', 'ora': '06:11  14:11  21:11'},
    {'name': 'Avda de la Paz\nKiosko Residencia', 'ora': '06:12  14:12  21:12'},
    {'name': 'Avda de la Paz\nBricofer', 'ora': '06:13  14:13  21:13'},
    {'name': 'Avda. Colon\nC/Milicias', 'ora': '06:15  14:15  21:15'},
    {'name': 'Monumento al Labrador\nLogroño', 'ora': '06:17  14:17  21:17'},
    {'name': 'Gran Via\nTorre de Logroño', 'ora': '06:18  14:18  21:18'},
    {'name': 'Gran Via\nRobinson', 'ora': '06:20  14:20  21:20'},
    {
      'name': 'Gonzalo de Berceo\nMerceria Esther',
      'ora': '06:21  14:21  21:21'
    },
    {
      'name': 'Gonzalo de Berceo\nCentro de Salud',
      'ora': '06:23  14:23  21:23'
    },
    {'name': 'Carmen Medrano\nIguazù', 'ora': '06:24  14:24  21:24'},
    {'name': 'Avda. de Burgos\nFORD', 'ora': '06:25  14:25  21:25'},
    {'name': 'Avda. Club Deportivo\nParada bus', 'ora': '06:28  14:28  21:28'},
    {'name': 'C/Estambrera\nRotonda Parada bus', 'ora': '06:32  14:32  21:32'},
    {'name': 'Estambrera\nConsejo regulador', 'ora': '06:35  14:35  21:35'},
  ];
  String name = 'Saica-Logroño';
  String cod = '368';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
