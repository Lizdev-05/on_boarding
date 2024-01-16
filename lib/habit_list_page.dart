import 'package:flutter/material.dart';

class HabitListPage extends StatefulWidget {
  const HabitListPage({super.key});

  @override
  State<HabitListPage> createState() => _HabitListPageState();
}

class _HabitListPageState extends State<HabitListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Text(
              "Skip Now",
              style: TextStyle(color: Color.fromARGB(255, 222, 222, 222)),
            ),
          ),
        ],
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Text(
            "Back",
            style: TextStyle(color: Color.fromARGB(255, 222, 222, 222)),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
