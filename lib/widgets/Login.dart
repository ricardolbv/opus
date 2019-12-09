import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:opus/widgets/Home.dart';

const users = const {
  'opustest01@gmail.com': '12345',
};


class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}


class LoginState extends State <Login> {
  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }





  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Opus',
      logo: 'assets/octopus.png',
      onLogin: _authUser,
      onSignup: null,
      onSubmitAnimationCompleted: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context)=>Home(),
        ));
      },
      messages: LoginMessages(
        usernameHint: 'Usuario',
        passwordHint: 'Senha',
        signupButton: 'Cadastrar',
        forgotPasswordButton: 'Esqueci minha senha',
        confirmPasswordError: 'Senha incorreta',
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