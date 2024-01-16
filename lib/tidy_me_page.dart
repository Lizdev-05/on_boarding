import 'package:flutter/material.dart';

class TidyMePage extends StatefulWidget {
  const TidyMePage({super.key});

  @override
  State<TidyMePage> createState() => _TidyMePageState();
}

class _TidyMePageState extends State<TidyMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Icon(
              Icons.alarm,
              color: Colors.grey,
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 37, 36, 36),
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
