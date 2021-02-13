import 'package:flutter/material.dart';

import '../helper.dart';

class LogLogista extends StatelessWidget {
  var items = [
    {'name': 'Avda. de Lobete\nMermeladas Eva', 'ora': ' 6:22  13:22  '},
    {'name': 'Avda. de Lobete\nesquina Avda. de Colon', 'ora': '6:24  13:24'},
    {'name': 'Duques de Najera\nCole. Madrid-Manila', 'ora': '06:26  13:26  '},
    {'name': 'Duques de Najera\nBar Avenida', 'ora': '06:28  13:28 '},
    {'name': 'Carmen Medrano\nIguazù', 'ora': '06:30  13:30'},
    {'name': 'Gonzalo de Berceo\nCentro de Salud', 'ora': '6:32 13:32 '},
    {
      'name': 'Gonzalo de Berceo\ncafeteria Las Palmeras',
      'ora': '06:34  13:34'
    },
    {'name': 'Gran Via\nLardero', 'ora': '06:36  13:36 '},
    {'name': 'Monumento al Labrador\nLogroño', 'ora': '06:38  13:38'},
    {'name': 'Jorge Vigon con\nM. de la Ensenada', 'ora': '06:40  13:40'},
    {
      'name': 'Duquesa de la Victoria\nC/Donantes de Sangre',
      'ora': '06:42  13:42'
    },
    {'name': 'Logista\nEl Sequero', 'ora': '06:50  13:50 '},
  ];
  String name = 'Logroño-Logista';
  String cod = '357';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
