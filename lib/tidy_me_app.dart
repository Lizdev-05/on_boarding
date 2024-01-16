import 'package:flutter/material.dart';
import 'package:on_bord/tidy_me_page.dart';

class TidyMeApp extends StatelessWidget {
  const TidyMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: TidyMePage(),
      ),
    );
  }
}
