import 'package:flutter/material.dart';
import 'package:on_bord/habit_list_page.dart';

class HabitListApp extends StatelessWidget {
  const HabitListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HabitListPage(),
      ),
    );
  }
}
