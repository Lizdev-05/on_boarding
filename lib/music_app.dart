import 'package:flutter/material.dart';
import 'package:on_bord/music_page.dart';

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MusicPage(),
      ),
    );
  }
}
