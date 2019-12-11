import 'package:flutter/material.dart';

class ListOfProfiles extends StatelessWidget {
  final String title;
  final String subtitle;
  final String author;
  final String publishDate;
  final String readDuration;


  ListOfProfiles({
    this.title,
    this.subtitle,
    this.author,
    this.publishDate,
    this.readDuration,
  }) ;



  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
       ListTile(
      leading: Icon(Icons.person),
      title: Text(this.title),
      subtitle: Text(this.author),
    ),

   ]
    )
    );
  }
}

