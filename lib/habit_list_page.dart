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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Choose what you would like to make your habit",
              style: TextStyle(color: Colors.white, fontSize: 32),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 15,
                itemBuilder: (BuildContext context, int pos) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    color: Colors.white,
                    height: 100,
                    child: const ListTile(
                      title: Text("Heading"),
                      subtitle: Text("Here is the subtitle"),
                      trailing: Icon(Icons.bolt),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
