import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './Login.dart';

class Opus extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return OpusState();
  }
}

class OpusState extends State <Opus> {
  @override
  Widget build(BuildContext context) {
    //
    return SplashScreen(
      seconds: 10,
      title: Text("Bem vindo(a) ao Opus"),
      image: Image.asset('assets/octopus.png'),
      backgroundColor: Colors.white,
      photoSize: 100.00,
      navigateAfterSeconds: Login(),

    );
  }
}