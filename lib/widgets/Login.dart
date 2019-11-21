import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}



class LoginState extends State <Login> {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Opus',
      logo: 'assets/octopus.png',
      onLogin: null,
      onSignup: null,
    );
  }
}





    /*MaterialApp(home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Opus"),
          centerTitle: true,
          actions: <Widget>[
            Image.asset('assets/octopus.png'),
          ],),

         body: Container(
             color: Colors.blue[100],
             alignment: Alignment.center,
             margin: EdgeInsets.all(70),
            child: Form(
              child: Column(children: <Widget>[
                TextFormField(
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please enter some text';
                   }
                   return null;
                  },
                ),

               TextFormField(
                  validator: (value){
                    if (value.isEmpty){
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  RaisedButton(onPressed: null, child: Text("Logar")),
                  RaisedButton(onPressed: null, child: Text("Cadastrar")),
                ],),
              ],
              ),
            )

                )
            ),
           
         );
  }
}*/