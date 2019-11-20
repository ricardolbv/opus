import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
    runApp(new MaterialApp(
      home: new _Opus(),
    ));
}


class _Opus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OpusState();
  }
}

class _OpusState extends State <_Opus>{
  @override
   Widget build(BuildContext context) {
    //
    return SplashScreen(
          seconds: 10,
          title: Text("Bem vindo(a) ao Opus"),
          image: Image.asset('assets/octopus.png'),
          backgroundColor: Colors.white,
          photoSize: 100.00,

    );
  }
}

