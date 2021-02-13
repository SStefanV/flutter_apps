import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // metodo para construir botones en la pantalla de inicio
  Widget makeButton(BuildContext context, String ruta, String name) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: RaisedButton(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        color: Colors.orange[50],
        shape: Border(
            right: BorderSide(color: Colors.red[900], width: 5),
            left: BorderSide(color: Colors.red[900], width: 5)),
        // shape: RoundedRectangleBorder(
        //   borderRadius: new BorderRadius.circular(6.0),
        //   side: BorderSide(
        //     color: Colors.blueGrey[900],
        //   ),
        // ),
        //splashColor: Colors.red[900],
        child: Text(
          name,
          style: TextStyle(
              fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
        ),

        onPressed: () {
          Navigator.pushNamed(context, ruta);
        },
      ),
    );
  }

  //------------------------FIN METODO -----------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(
              'Fabricas y Residencias',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            //child: Image.asset('images/jlogo3.png', fit: BoxFit.cover),
          ),
          // bottom: PreferredSize(
          //     child: Container(
          //       color: Colors.blueGrey[900],
          //       height: 4.0,
          //     ),
          //     preferredSize: Size.fromHeight(8.0)),
          //centerTitle: true,
        ),
        body: Column(children: [
          Container(
            // margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
            color: Colors.blueGrey[600],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 25),
                //   child: Text('Fabricas y Residencias',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 26,
                //         fontWeight: FontWeight.bold,
                //       )),
                // ),
              ],
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(7.0, 0, 7, 0),
                child: Column(
                  children: [
                    SizedBox(height: 30.0),
                    //ROW 1---------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            child: makeButton(
                                context, '/res_la_rioja', 'RES.DE LA RIOJA')),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: makeButton(
                              context, '/res_r_sofia', 'RES. REINA SOFIA'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 2 --------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(
                              context, '/logPoligono', 'LOGROÑO-POLIGONO'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: makeButton(
                              context, '/poligono', 'POLIGONO-LOGROÑO'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 3----------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(context, '/inconal', 'INCONAL-LOG'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child:
                              makeButton(context, '/grafometal', 'GRAFOMETAL'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 4--------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(context, '/logSaica', 'LOG-SAICA'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: makeButton(context, '/saica', 'SAICA-LOG'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 5----------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(context, '/crown', 'CROWN'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child:
                              makeButton(context, '/logLogista', 'LOG-LOGISTA'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 6 ----------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(context, '/logIac1', 'LOG - IAC1'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: makeButton(context, '/iac1Log', 'IAC1 - LOG'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 7 -----------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(context, '/logIac2', 'LOG - IAC2'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: makeButton(context, '/iac2Log', 'IAC2 - LOG'),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    //ROW 8 -----------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: makeButton(context, '/logIac3', 'LOG - IAC3'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: makeButton(context, '/iac3Log', 'IAC3 - LOG'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
