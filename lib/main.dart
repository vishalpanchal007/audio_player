import 'package:audio/player_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.restoreSystemUIOverlays();
    return MaterialApp(
      title: "Music Player",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.white70,
         visualDensity: VisualDensity.adaptivePlatformDensity),
      home: PlaylistPage(),
    );
  }
}
