

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:be002/providers/model.dart';

import './celda.dart';


class GrupoCeldas extends StatelessWidget {

  int _grupoID;

  List <Celda> _celdas = [];


  GrupoCeldas(int grupoID) {

      _grupoID = grupoID;
      

      _creaCeldas();

  }

  @override
  Widget build(BuildContext context) {

   

    return ChangeNotifierProvider (

        builder: (context) => (juego.getGrupoById(_grupoID)),
        child:
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [Eleccion(), ... _celdas ],)

    );
  }

  void _creaCeldas() {

    _celdas.clear();

    for (int celdaID = 1; celdaID <= juego.getGrupoById(_grupoID).opciones; celdaID++) {


      var cell = new Celda(celdaID);

      _celdas.add(cell);
    }
  }
}


class Eleccion extends StatelessWidget {

  Widget build(BuildContext context) {

    final grupo = Provider.of <Grupo> (context);

    return Text(grupo.eleccion.toString());
  }
}








