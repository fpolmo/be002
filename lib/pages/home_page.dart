
import 'package:flutter/material.dart';
import '../providers/model.dart';
import '../widgets/grupo_celdas.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {



      final List <GrupoCeldas> gruposDeCeldas = juego.grupos.map ((grupo) => GrupoCeldas(grupo.grupoID)).toList();


      return Scaffold(

        appBar: AppBar(
          title: Text('Be 002')
        ),

        body: Center(
          child:
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: gruposDeCeldas
              )

        )


      );

  }
}