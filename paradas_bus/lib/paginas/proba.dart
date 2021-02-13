import 'package:flutter/material.dart';
import '../helper.dart';

class Proba extends StatelessWidget {
  var items = [
    {'name': 'Yagüe (Parada Bus, Parque)', 'ora': '12:20 / 12:23 / 12:30'},
    {'name': 'Murrieta (Iglesia San Miguel)', 'ora': '13:00'},
    {'name': 'Yagüe (Parada Bus, Parque)', 'ora': '12:00 / 12:23 / 12:30'},
    {'name': 'Murrieta (Iglesia San Miguel)', 'ora': '13:00'},
    {'name': 'Yagüe (Parada Bus, Parque)', 'ora': '12:00 / 12:23 / 12:30'},
    {'name': 'Murrieta (Iglesia San Miguel)', 'ora': '13:00'},
    {'name': 'Yagüe (Parada Bus, Parque)', 'ora': '12:00 / 12:23 / 12:30'},
    {'name': 'Murrieta (Iglesia San Miguel)', 'ora': '13:00'},
    {'name': 'Yagüe (Parada Bus, Parque)', 'ora': '12:00 / 12:23 / 12:30'},
    {'name': 'Murrieta (Iglesia San Miguel)', 'ora': '13:00'},
  ];
  String name = 'Proba';
  String cod = '777';
  Helper help = Helper();

  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
