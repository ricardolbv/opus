import 'package:flutter/material.dart';

import 'package:opus/widgets/mostUsedWidgets/AppOpusBar.dart';
import 'package:opus/widgets/mostUsedWidgets/BottomOpusBar.dart';

class Perfil extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppOpusBar,
        bottomNavigationBar: BottomOpusBar(),

        body: Center(
          child: Text("Tela de Perfil"),
        ),
      ),
    );
  }
}