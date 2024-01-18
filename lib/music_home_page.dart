import 'package:flutter/material.dart';
import 'package:on_bord/authentication/authentication_app.dart';
import 'package:on_bord/habit_list_app.dart';
import 'package:on_bord/music_app.dart';

import 'package:on_bord/tidy_me_app.dart';

class MusicHomePage extends StatefulWidget {
  const MusicHomePage({super.key});

  @override
  State<MusicHomePage> createState() => _MusicHomePageState();
}

class _MusicHomePageState extends State<MusicHomePage> {
  int activeIndex = 0;

  List<Widget> pages = [
    const MusicApp(),
    const TidyMeApp(),
    const HabitListApp(),
    const AuthenticationApp(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), label: "TidyMe"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Habit"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "OnBoard"),
          ],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 16, 135, 233),
          unselectedItemColor: Colors.black,
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          },
        ),
        // appBar: AppBar(
        //   leadingWidth: 150,
        //   // backgroundColor: Colors.black,
        //   leading: const Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //     child: Text(
        //       "Tracks",
        //       style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 30,
        //           fontWeight: FontWeight.w500),
        //     ),
        //   ),
        // ),
        body: pages[activeIndex],
      ),
    );
  }
}
