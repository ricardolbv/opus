import 'package:flutter/material.dart';
import 'package:opus/widgets/Agenda.dart';


class ListOfProfiles extends StatelessWidget {

  final String nome;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;


  ListOfProfiles({
    this.nome,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
  }) ;



  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
       ListTile(
      leading: Icon(Icons.person),
      title: Text(this.nome),
      subtitle: Text(this.author),
    ),

   ]
      ),
          onTap: () => {Navigator.push(context,MaterialPageRoute(builder: (context) => Agenda(nome: this.nome)))},
    );
  }
}



