import 'package:flutter/material.dart';

import 'package:game_jet/src/pages/home.dart';
import 'package:flutter/services.dart';
import 'package:game_jet/src/pages/posts.dart';
import 'package:game_jet/src/screens/screens.dart';
import 'package:game_jet/src/pages/posts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App GameJet',
      initialRoute: 'registro',
      routes: {
        'login': (_) => LoginScreen(),
        'registro': (_) => RegistroScreen(),
        'home': (_) => Home(),
        'posts': (_) => InputPost(),
      },
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey[300]),
    );
  }
}
