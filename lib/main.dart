import 'package:flutter/material.dart';
import 'widgets/InitialWidget.dart';
import 'widgets/Login.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: InitialWidget(),
    /*routes: {
        '/'  : (context) => InitialWidget(), // Tela inicial com splash

        '/login' : (context) => Login(),         // Tela de login
    },*/
  ));
}




