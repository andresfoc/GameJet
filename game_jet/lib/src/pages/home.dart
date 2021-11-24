import 'package:flutter/material.dart';
import 'package:game_jet/widgets/background.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Background()],
      ),
    );
  }
}
