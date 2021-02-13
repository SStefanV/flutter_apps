import 'package:flutter/material.dart';

import '../helper.dart';

class Grafometal extends StatelessWidget {
  var items = [
    {'name': 'Avenida de La Paz,\nBolsos Santamaria', 'ora': '--  --  --'},
    {'name': 'Jorge Vigon 33\n', 'ora': '--  --  --'},
    {'name': 'Gonzalo de Berceo,\nLas Palmeras', 'ora': '--  --  --'},
    {'name': 'G. Berceo\nC/Medrano(Farmacia)', 'ora': '--  --  --'},
    {'name': 'C/Portillejo\n', 'ora': '--  --  --'},
    {'name': 'Yagüe\nC/Fueros de Logroño', 'ora': '--  --  --'}
  ];
  String name = 'Grafometal';
  String cod = '317';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
// Update las Paradas
