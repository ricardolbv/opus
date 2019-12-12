import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';
import 'package:opus/widgets/Trabalhadores.dart';

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
                height: 50.00,
              //  color: Colors.blue[400],
                padding: EdgeInsets.all(100.00),
                child: Text(
                  'These are wise words, enterprising men quote \'em.',
                  style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
                ),
              ), //Container da
               // barra de pesquisa
              Container(// Container da list view
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 300.00,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                Container(color: Colors.blue[400] ,alignment: Alignment.center,padding: EdgeInsets.all(30.0),child: GestureDetector(child: Image.asset('assets/mecanico.png',fit: BoxFit.fitHeight),onTap: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Trabalhadores()),

                     );
                   }),),

                    Container(color: Colors.blue[400] ,alignment: Alignment.center,padding: EdgeInsets.all(30.0),child: GestureDetector(child: Image.asset('assets/massoterapia.jpg',fit: BoxFit.fitHeight),onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trabalhadores()),

                      );
                    }),),

                    Container(color: Colors.blue[400] ,alignment: Alignment.center,padding: EdgeInsets.all(30.0),child: GestureDetector(child: Image.asset('assets/cosmeticos.jpg',fit: BoxFit.fitHeight),onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trabalhadores()),

                      );
                    }),),

                    Container(color: Colors.blue[400] ,alignment: Alignment.center,padding: EdgeInsets.all(30.0),child: GestureDetector(child: Image.asset('assets/jardineiro.jpg',fit: BoxFit.fitHeight),onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Trabalhadores()),

                      );
                    }),),
  ]
                ),
              ),
            ]
        ),
        bottomNavigationBar: BottomOpusBar(),
    );
  }
}


