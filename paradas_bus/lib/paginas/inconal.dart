import 'package:flutter/material.dart';

import '../helper.dart';

class Inconal extends StatelessWidget {
  var items = [
    {'name': 'Inconal,\nPol Sequero', 'ora': '--  15:00  --'},
    {'name': 'Avda. de la Paz\nBolsos Santamaria', 'ora': '--  15:05  --'},
    {'name': 'Jorge Vigon, 33,\nLogroño', 'ora': '--  15:00  --'},
    {'name': 'G. Berceo\nLas Plmeras', 'ora': '--  15:15  --'},
    {'name': 'G. Berceo\nFarmacia', 'ora': '--  15:17  --'},
    {'name': 'C/Porillejo\nLogroño', 'ora': '--  15:17  --'},
    {'name': 'Yagüe\nC/Fueros de Logroño', 'ora': '--  --  --'}
  ];
  String name = 'Inconal-Log';
  String cod = '316';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
