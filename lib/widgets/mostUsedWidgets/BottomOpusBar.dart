import 'package:flutter/material.dart';

import 'package:opus/widgets/Home.dart';
import 'package:opus/widgets/Perfil.dart';
import 'package:opus/widgets/Agenda.dart';


var listaTelas = {Home(),Agenda(),Perfil ()};

/*Navigator.push(
context,
MaterialPageRoute(builder: (context) => SecondRoute())*/



class BottomOpusBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomOpusBarState();
  }
}


class BottomOpusBarState extends State <BottomOpusBar> {
  void _setaTela(var ind){
    switch (ind) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Agenda()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Perfil()));
        break;
    }
  }
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue[400],
      onTap: _setaTela,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Menu'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.schedule),
          title: new Text('Agenda'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          title: new Text ('Perfil'),
        )
      ],
    );


  }
}
