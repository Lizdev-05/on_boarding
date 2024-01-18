import 'package:flutter/material.dart';

class TidyBottomBar extends StatefulWidget {
  const TidyBottomBar({super.key});

  @override
  State<TidyBottomBar> createState() => _TidyBottomBarState();
}

class _TidyBottomBarState extends State<TidyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
