import 'package:flutter/material.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/ListOfProfiles.dart';

//Implementar com Scaffold

class Agenda extends StatelessWidget {
  String nome;
  Agenda({this.nome});



  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppOpusBar,
        bottomNavigationBar: BottomOpusBar(),

        body:
        Card(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.schedule),
                    title: Text(this.nome),
                  ),
                  ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Cancelar'),
                          onPressed: () { /* ... */ },
                        ),
                        FlatButton(
                          child: const Text('Contatar'),
                          onPressed: () { /* ... */ },
                        ),
                      ]
                  ) ]
            )));;
      ;;
  }
}

