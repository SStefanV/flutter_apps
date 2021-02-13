import 'package:flutter/material.dart';

import '../helper.dart';

class ResLaRioja extends StatelessWidget {
  var items = [
    {'name': 'Avenida de La Paz,\nTienda china', 'ora': '7:25  14:25  21:25'},
    {'name': 'Avenida de la paz\nAyuntamiento', 'ora': '7:30  14:30  21:30'},
    {'name': 'Vara de rey,\nBanco de España', 'ora': '7:35  14:35  21:35'},
    {'name': 'Gran Via, 40\nCalle Lardero', 'ora': '7:40  14:40  21:40'},
    {'name': 'G. Berceo con\nC/Medrano-Farmacia', 'ora': '7:45  14:45  21:45'},
    {
      'name': 'C/Chile con C/Barreras-Talleres Midas',
      'ora': '7:50  14:50  21:50'
    },
    {'name': 'Residencia de La Rioja\n', 'ora': '7:55  14:55  21:55'}
  ];
  String name = 'Residencia de La Rioja';
  String cod = '424';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
