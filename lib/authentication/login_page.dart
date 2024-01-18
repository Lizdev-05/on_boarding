import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Hi, Jared!",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "23 Jan, 2022",
                  style: GoogleFonts.roboto(
                    color: const Color.fromARGB(207, 255, 255, 255),
                    fontSize: 18,
                  ),
                ),
                trailing: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Color.fromARGB(255, 57, 166, 255),
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 57, 166, 255),
                  prefixIcon: Icon(Icons.search),
                  labelText: "Search",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 80, 153, 212),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
