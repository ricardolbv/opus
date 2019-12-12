import 'package:flutter/material.dart';
import 'package:opus/widgets/Agenda.dart';



class AgendaCard extends StatelessWidget{
  final String nome;
  AgendaCard ({this.nome});



  @override
  Widget build(BuildContext context) {
      return Card(
          child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
          leading: Icon(Icons.schedule),
          title: Text(nome),
      ),
      ButtonBar(
      children: <Widget>[
      FlatButton(
      child: const Text('Cancelar'),
      onPressed: () { /* ... */ },
      ),
      FlatButton(
      child: const Text('Contatar'),
      onPressed: () { /* ... */ },
      ),
      ]
      ) ]
      ));

    }
  }
