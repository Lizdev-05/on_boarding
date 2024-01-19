import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

  final GlobalKey<ScaffoldState> _scafoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scafoldState,
        backgroundColor: Colors.black,
        drawer: _myAppDrawer(),
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
          selectedItemColor: const Color.fromARGB(255, 16, 135, 233),
          unselectedItemColor: Colors.black,
          onTap: (value) {
            setState(() {
              activeIndex = value;
            });
          },
        ),
        appBar: AppBar(
          leadingWidth: 150,
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () => {_openAppDrawer()},
              child: const Text(
                "Tracks",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ElevatedButton(
          onPressed: () {
            _openAppDrawer();
          },
          child: const Text("Open Menu"),
        ),
        body: pages[activeIndex],
      ),
    );
  }

  void _openAppDrawer() {
    _scafoldState.currentState!.openDrawer();
  }

  Widget _myAppDrawer() {
    return Drawer(
      backgroundColor: Colors.pink,
      width: 300,
      child: Column(
        children: [
          Container(
              height: 200,
              // padding: const EdgeInsets.only(top: 30),
              margin: EdgeInsets.symmetric(vertical: 50),
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "Oyinlade@gmail.com",
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
                subtitle: Text("Software Developer",
                    style: GoogleFonts.roboto(color: Colors.white)),
              ))
        ],
      ),
    );
  }
}
