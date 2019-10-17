import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:be002/providers/model.dart';

class Celda extends StatelessWidget {



  final int _celdaID;

  Celda(this._celdaID);


  @override
  Widget build(BuildContext context) {

    final grupo = Provider.of<Grupo>(context);
    final color = (grupo.eleccion == _celdaID) ? Colors.green : Colors.red;

    return

      Center(child: IconButton(
          icon: Icon(Icons.cloud_circle, color: color, size: 40.0),
          onPressed: () => grupo.eleccion = _celdaID
       ),
      );

  }
}