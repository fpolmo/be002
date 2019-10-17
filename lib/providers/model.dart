import 'package:flutter/material.dart';

class Grupo with ChangeNotifier {

    int grupoID;
    int opciones; // número de opciones a presentar
    int _eleccion = 0; // opcion elegida

    Grupo(this.grupoID, this.opciones);

    get eleccion {
      return _eleccion;
    }
    set eleccion (int valor ) {
      if(valor<0 || valor>opciones) valor=0;
      _eleccion = valor;

      notifyListeners();
    }
}

class Juego {

    List<Grupo> grupos = [];

    Grupo getGrupoById(int id) {
      return grupos.firstWhere((grupo) => grupo.grupoID == id);
    }

    void updateEleccion(int grupoID, int cellID) {

        getGrupoById(grupoID)?.eleccion = cellID;

    }

    int getEleccion(int grupoID) {
      return getGrupoById(grupoID).eleccion ?? 0;
    }


    Juego() {

      grupos.add(Grupo(1,3));
      grupos.add(Grupo(2,4));
      grupos.add(Grupo(3,5));
      grupos.add(Grupo(4,4));
      grupos.add(Grupo(5,3));


    }

}

Juego juego = Juego();


