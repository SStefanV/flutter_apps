import 'package:flutter/material.dart';
import '../helper.dart';

class LoPoligono extends StatelessWidget {
  var items = [
    {'name': 'Yagüe\nParada Bus, Parque', 'ora': '5:10  13:10  21:10'},
    {'name': 'Murrieta\nIglesia San Miguel', 'ora': '5:12  13:12  21:12'},
    {'name': 'Gran Via\nparada Robinson', 'ora': '5:14  13:14  21:14'},
    {'name': 'Vara de rey\nBanco de España', 'ora': '5:16  13:16  21:16'},
    {'name': 'Instituto Sagasta\nParada bus', 'ora': '5:18  13:18  21:18'},
    {'name': 'Avda de la Paz\nParada bus BBVA', 'ora': '5:20  13:20  21:20'},
    {'name': 'Avda de la Paz\nDonante de sangre', 'ora': '5:22  13:22  21:22'},
    {'name': 'Colegio Obispo Blanco\n Parada bus', 'ora': '5:24  13:24  21:24'},
    {'name': 'Poligono El Sequero\n', 'ora': '5:50  13:50  21:50'},
    {'name': '=========================', 'ora': '-- -- --'},
    {'name': 'Talleres ESNA', 'ora': '-- -- --'},
    {'name': 'Grafometal', 'ora': '-- -- --'},
    {'name': 'Rioglass', 'ora': '-- -- --'},
    {'name': 'Quimiberica S.A', 'ora': '-- -- --'},
    {'name': 'Iberplac', 'ora': '-- -- --'},
    {'name': 'Galletas Arluy', 'ora': '-- -- --'},
    {'name': 'Galletas Reyga', 'ora': '-- -- --'},
    {'name': 'Filial del Lear', 'ora': '-- -- --'},
    {'name': 'Conservas Riojanas', 'ora': '-- -- --'},
    {'name': 'Altadis', 'ora': '-- -- --'}
  ];
  String name = 'Logroño-Poligono';
  String cod = '40';
  Helper help = Helper();
  @override
  Widget build(BuildContext context) {
    return help.buildCard(items, name, cod, context);
  }
}
