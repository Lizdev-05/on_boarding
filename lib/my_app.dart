import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.settings, size: 34, color: Colors.red),
                  const Text(
                    "Login to brand",
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Container())
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
