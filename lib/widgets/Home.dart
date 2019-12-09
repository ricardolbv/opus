import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State <Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppOpusBar,

        body: Column(
            children: <Widget>[
              Container(
                width: 300.00,
                height: 30.00,
              ), //Container da barra de pesquisa
              Container(// Container da list view
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 300.00,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Image.asset('assets/mecanico.png',fit: BoxFit.fill,),
                    Image.asset('assets/cosmeticos.jpg',fit: BoxFit.fill,),
                    Image.asset('assets/massoterapia.jpg',fit: BoxFit.fill,),
                    Image.asset('assets/educacao.jpg',fit: BoxFit.fill,),
                    Image.asset('assets/jardineiro.jpg',fit: BoxFit.fill,),
                  ],
                ),
              ),
            ]
        ),
        bottomNavigationBar: BottomOpusBar(),
    );
  }
}