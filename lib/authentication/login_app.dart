import 'package:flutter/material.dart';
import 'package:on_bord/authentication/login_page.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 8, 120, 212),
        bottomNavigationBar: BottomNavigationBar(
          // Use BottomNavigationBar here
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          ],
        ),
        body: const SafeArea(child: LoginPage()),
      ),
    );
  }
}
