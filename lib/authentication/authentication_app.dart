import 'package:flutter/material.dart';
import 'package:on_bord/authentication/login_page.dart';

class AuthenticationApp extends StatelessWidget {
  const AuthenticationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 109, 171),
        // bottomNavigationBar: BottomNavigationBar(
        //   // Use BottomNavigationBar here
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        //   ],
        // ),
        body: SafeArea(child: LoginPage()),
      ),
    );

    // return const LoginPage();
  }
}
