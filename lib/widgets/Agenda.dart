import 'package:flutter/material.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';

//Implementar com Scaffold

class Agenda extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppOpusBar,
        bottomNavigationBar: BottomOpusBar(),

        body: Center(
          child: Text("Tela de Agendamentos"),
        ),
      ),
    );
  }
}