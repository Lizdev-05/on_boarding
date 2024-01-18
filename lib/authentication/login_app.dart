import 'package:flutter/material.dart';
import 'package:on_bord/authentication/login_page.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 120, 212),
        body: LoginPage(),
      ),
    );
  }
}
