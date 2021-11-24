import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:game_jet/src/widgets/auth_background.dart';
import 'package:game_jet/src/widgets/white_box.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      AuthBackground(
        child: ContenidoCaja(),
      )
    ]));
  }
}

class ContenidoCaja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
        width: 360,
        height: 120,
        padding: const EdgeInsets.all(10.0),
        color: Colors.white,
        child: Column(children: [
          Text(
            'El juego Gartic Phone se ha vuelto muy popular gracias a los streamers. Se trata del juego de teléfono roto, donde... ver más.',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          )
        ]));
  }
}
