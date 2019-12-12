import 'package:flutter/material.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/ListOfProfiles.dart';

class Trabalhadores extends StatelessWidget{

  List  trabalhadores = [ // Variavel que lidara com resposta do request
    ["Francisco","Faço carretos e tals"],
    ["Zezinho", "Coloco zulejos rgergererrer"],
    ["rgerg", "Jogo nfwngnroigjpoeieo"],
  ];

  Widget build(BuildContext context){
    return Scaffold(
              appBar: AppOpusBar,
              bottomNavigationBar: BottomOpusBar(),

          body: new
                ListView.builder(
                  itemBuilder: (BuildContext ctx, int index) =>
                           _listOf(ctx, index, trabalhadores),
                  itemCount:  trabalhadores.length,
          )
        );
  }
}

Widget _listOf(BuildContext ctx,int index, List trabalhadores){
return new ListOfProfiles(nome:trabalhadores[index][0],author:trabalhadores[index][1] );
}


// Metodo que tranforma todo mundo em vetor e passa ao listOf

