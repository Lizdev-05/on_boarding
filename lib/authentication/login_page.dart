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
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                    color: const Color.fromARGB(255, 57, 166, 255),
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
                      Radius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel?",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                    size: 30,
                    weight: 800,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 57, 166, 255),
                      child: Image.asset(
                        "images/badly.png",
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 57, 166, 255),
                      child: Image.asset("images/fine.png"),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(3),
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 57, 166, 255),
                      child: Image.asset("images/well.png"),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 60,
                      width: 60,
                      color: const Color.fromARGB(255, 57, 166, 255),
                      child: Image.asset("images/excellent.png"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
