import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'musicplayer/music_player_ui.dart';
//import 'package:groove_music/search_page.dart';
//import 'package:simple_animations/simple_animations.dart';
import 'login_page_ui.dart';
import 'signup_page_ui.dart';
import 'package:groove_music/bottom_nav_bar_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: BottomNavBarPage(),
      home: MusicPlayer(),
      //home: LoginPage(),
      //home: SignUpPage(),
      //debugShowCheckedModeBanner: false,

    );
  }
}
