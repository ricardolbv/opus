import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:opus/widgets/Home.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State <Login> {
  Future<String> _authUser(LoginData data) {
    String url = 'http://10.0.2.2:3000/api/cliente/login';
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"email": "${data.name}", "senha": "${data.password}"}';
    // make POST request
    return http.post(url, headers: headers, body: json).then((response) {
      print(response.statusCode);
      if (response.statusCode == 200) {
        return null;
      }
      return 'Usuário inválido';
    });
  }

  Future<String> _signupUser(LoginData data) {
    String url = 'http://10.0.2.2:3000/api/cliente/insert';
    Map<String, String> headers = {"Content-type": "application/json"};
    String json = '{"email": "${data.name}", "senha": "${data.password}"}';
    // make POST request
    return http.post(url, headers: headers, body: json).then((response) {
      print(response.statusCode);
      if (response.statusCode == 201) {
        return null;
      }
      return 'Usuário já existente';
    });
  }

  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Opus',
      logo: 'assets/octopus.png',
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=>Home(),
        ));
      },
      messages: LoginMessages(
        usernameHint: 'E-Mail',
        passwordHint: 'Senha',
        signupButton: 'Cadastrar',
        forgotPasswordButton: 'Esqueci minha senha',
        confirmPasswordError: 'As senhas não coincidem',
        recoverPasswordDescription: 'Voce vai receber instruções no email',
        recoverPasswordButton: 'Recuperar senha',
        goBackButton: 'Voltar',
        confirmPasswordHint: 'Confirmar senha',
        recoverPasswordSuccess: 'Email enviado com sucesso!',
      ),
      theme: LoginTheme(
        primaryColor: Colors.blue[500],
        accentColor: Colors.blue[50],

      ),
    );
  }
}