import 'package:flutter/material.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/ListOfProfiles.dart';

class Trabalhadores extends StatelessWidget{
  var _listTrab;

  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
              appBar: AppOpusBar,
              bottomNavigationBar: BottomOpusBar(),

          body:
                ListOfProfiles(
                  author: "Teset11",
                  title: "Trabalhador",
          ),

        )
    );
  }
}

List <ListOfProfiles> _listOf(List lista){
  return lista.map((cardProfile) => ListOfProfiles(title: cardProfile[0][0], author: cardProfile[0][1],)).toList();
}


var mocaDados = [
   ["Test","gergeg"],
  ["Outro user", "Outro usuario"]
];