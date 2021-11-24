import 'package:flutter/material.dart';
import 'package:game_jet/src/widgets/auth_background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        AuthBackground(
            child: Container(
          child: Column(
            children: [
              Text(
                'El juego Gartic Phone se ha vuelto muy popular gracias a los streamers. Se trata del juego de teléfono roto, donde... ver más.',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white54),
              ),
            ],
          ),
        ))
      ],
    ));
  }
}
