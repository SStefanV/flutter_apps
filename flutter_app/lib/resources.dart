import 'package:flutter/material.dart';

class Resurse {
  List<String> listaRutas = [
    'Logroño-Burgos',
    'Logroño-Zaragoza',
    'Logroño-Sto.Domingo',
    'Logroño-Haro',
    'Logroño-Miranda',
    'Logroño-Calahorra',
    'Logroño-Alfaro',
    'Logroño-Arnedo',
    'Logroño-Rincon de Soto',
    'Logroño-Estollo',
    'Logroño-Villa de Ocon',
    'Logroño-Sartaguda',
    'Logroño-Viguera',
    'Burgos-Logroño',
    'Burgos-Zaragoza',
    'Sto.Domingo-Logroño',
    'Najera-Logroño',
    'Haro-Logroño',
    'Miranda-Logroño',
    'Calahorra-Logroño',
    'Alfaro-Logroño',
    'Arnedo-Logroño',
    'Rincon de Soto-Logroño',
    'Estollo-Logroño',
    'Villa de Ocon-Logroño',
    'Sartaguda-Logroño',
    'Viguera-Logroño',
  ];
  // String rutas =
  //     '{"Logroño-Burgos":{"luni-vineri":"7:30 13:00 14:45 17:30", "sabado":"7:30 14:45", "domingo":"13:00 17:30"},'
  //     '"Logroño-Zaragoza": {"luni-vineri":"6:45 9:30 12:30 ", "sabado":"12:30", "domingo":"11:00 16:00 20:00"},'
  //     '"Logroño-Sto.Domingo":{"luni-vineri": "7:10 7:15 7:30 8:30 13:00 14:45 16:30 17:30", "sabado": "7:30 14:45", "domingo": "13:00 17:00"},'
  //     '"Burgos-Logroño": {"luni-vineri": "7:30 10:30 15:00 18:00", "sabado": "10:30 18:00", "domingo": "18:00 20:30"},'
  //     '"Burgos-Zaragoza": {"luni-vineri": "7:30 10:30", "sabado": "10:30", "domingo": "18:00"},'
  //     '"Logroño-Haro": {"luni-vineri": "7:30 9:15 10:15 13:00 15:00 17:00 19:00 19:15 20:00","sabado": "10:15 13:00 17:00 20:00", "domingo": "10:15 17:00 20:30"},'
  //     '"Logroño-Miranda": {"luni-vineri": "10:15 13:00 17:00 19:00", "sabado": "10:15 17:00", "domingo": "10:15 17:00"},'
  //     '"Logroño-Calahorra": {"luni-vineri": "8:00 10:15 13:00 14:45 16:30 18:15 19:00 20:00", "sabado": "7:45 10:15 13:00 16:30 18:15 20:00", "domingo": "10:15 16:30 21:00"},'
  //     '"Logroño-Arnedo": {"luni-vineri": "10:00 13:00 14:45 16:30 18:15 19:20", "sabado": "10:15 13:00 16:30 18:15 20:00", "domingo": "10:15 16:30 21:00"},'
  //     '"Logroño-Rincon de Soto": {"luni-vineri": "8:00 10:15 13:00 20:00", "sabado": "10:15 13:00 20:00", "domingo": "10:15"},'
  //     '"Logroño-Estollo": {"luni-vineri": "13:00 18:40", "sabado": "8:00", "domingo": "8:30"},'
  //     '"Logroño-Villa de Ocon": {"luni-vineri": "13:30 19:30", "sabado": "sin sevicio", "domingo":"sin servicio"},'
  //     '"Logroño-Sartaguda": {"luni-vineri": "13:00", "sabado": "sin servicio", "domingo": "sin servicio"},'
  //     '"Logroño-Viguera": {"luni-vineri": "9:00 13:00 16:00 20:00", "sabado": "9:00 13:00 20:00", "domingo": "sin servicio"},'
  //     '"Sto.Domingo-Logroño": {"luni-vineri": "7:15 8:35 9:00 10:00 11:35 14:35 15:30 16:05 16:45 19:05", "sabado": "11:35 19:05", "domingo": "19:05 21:35" },'
  //     '"Najera-Logroño": {"luni-vineri": "7:40 9:00 9:25 10:25 10:30 12:00 15:00 15:40 15:55 16:30 17:10 19:30 20:20", "sabado": "12:00 19:30 20:45", "domingo": "19:30 19:50 22:00"},'
  //     '"Haro-Logroño": {"luni-vineri": "6:50 7:45 8:45 11:15 14:45 18:00 20:30", "sabado": "8:40 8:45 14:45 18:00", "domingo": "8:45 14:45 19:00 "},'
  //     '"Miranda-Logroño": {"luni-vineri": "8:10 14:10 20:00", "sabado": "8:10 14:10", "domingo": "18:30"},'
  //     '"Calahorra-Logroño": {"luni-vineri":"7:45 8:45 11:00 13:00 15:00 18:00", "sabado": "8:45 13:00 14:45 18:00", "domingo": "8:45 14:45 19:30"},'
  //     '"Arnedo-Logroño": {"luni-vineri": "7:30 8:15 9:00 13:00 14:45 18:00", "sabado": "8:15 9:00 13:00 14:45 18:00", "domingo": "8:15 14:45 19:30"},'
  //     '"Rincon de Soto-Logroño": {"luni-vineri": "7:10 8:00 10:30 14:45", "sabado": "8:00 14:30", "domingo": "14:30 18:45"},'
  //     '"Estollo-Logroño": {"luni-vineri": "8:45 15:00 19:40", "sabado": "20:05", "domingo": "19:10"},'
  //     '"Villa de Ocon-Logroño": {"luni-vineri": "7:28 15:28", "sabado": "sin servicio", "domingo": "sin servicio"},'
  //     '"Sartaguda-Logroño": {"luni-vineri": "9:40", "sabado": "sin servicio", "domingo": "sin servicio"},'
  //     '"Viguera-Logroño": {"luni-vineri": "9:40 13:40 16:40 21:30", "sabado": "9:40 13:40 21:30", "domingo": "sin servicio"},'
  //     '"Logroño-Alfaro": {"luni-vineri": "6:45 12:30", "sabado": "12:30", "domingo": "11:00 16:00"},'
  //     '"Alfaro-Logroño": {"luni-vineri": "8:10 11:30 15:15 19:00", "sabado": "19:00", "domingo": "20:45"}}';

  List<String> getListaRutas() {
    return listaRutas;
  }

  // String getRutas() {
  //   return rutas;
  // }
}
