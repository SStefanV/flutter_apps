import 'package:flutter/material.dart';
import '../helper.dart';

class Poligono extends StatelessWidget {
  var items = [
    {'name': 'Altadis', 'ora': '6:10 14:10 22:10'},
    {'name': 'Conservas Riojanas', 'ora': '6:12 14:12 22:12'},
    {'name': 'Filial del Lear', 'ora': '6:13 14:13 22:13'},
    {'name': 'Galletas Reyga', 'ora': '6:14 14:14 22:14'},
    {'name': 'Galletas Arluy', 'ora': '6:16 14:16 22:16'},
    {'name': 'Iberplac', 'ora': '6:18 14:18 22:18'},
    {'name': 'Quimiberica S.A', 'ora': '6:20 14:20 22:20'},
    {'name': 'Rioglass', 'ora': '6:22 14:22 22:22'},
    {'name': 'Grafometal', 'ora': '6:24 14:24 22:24'},
    {'name': 'Talleres ESNA', 'ora': '6:26 14:26 22:26'},
    {'name': '=========================', 'ora': '-- -- --'},
    {'name': 'Colegio Obispo Blanco\nParada bus', 'ora': '-- -- --'},
    {'name': 'Avda de la Paz\nDonante de sangre', 'ora': '-- -- --'},
    {'name': 'Avda de la Paz\nParada bus BBVA', 'ora': '-- -- --'},
    {'name': 'Instituto Sagasta\nParada bus', 'ora': '-- -- --'},
    {'name': 'Vara de rey\nBanco de España', 'ora': '-- -- --'},
    {'name': 'Gran Via\nparada Robinson', 'ora': '-- -- --'},
    {'name': 'Murrieta\nIglesia San Miguel', 'ora': '-- -- --'},
    {'name': 'Yagüe\nParada Bus, Parque', 'ora': '-- -- --'},
  ];
  String name = 'Poligono-Logroño';
  String cod = '41';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
