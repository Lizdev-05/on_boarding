import 'package:flutter/material.dart';

class HabitListPage extends StatefulWidget {
  const HabitListPage({super.key});

  @override
  State<HabitListPage> createState() => _HabitListPageState();
}

class FeedItem {
  final String name;
  final String job;
  final int age;
  final Color? color;

  FeedItem(
      {required this.name,
      required this.job,
      required this.age,
      required this.color});
}

class _HabitListPageState extends State<HabitListPage> {
  List<FeedItem> feedItems = [
    FeedItem(name: "Bright", job: "Fellow", age: 32, color: Colors.blue),
    FeedItem(
        name: "Obehi",
        job: "Thorn in my flesh",
        age: 25,
        color: const Color.fromARGB(255, 79, 93, 104)),
    FeedItem(name: "Oyinlade", job: "EIT", age: 23, color: Colors.pink),
    FeedItem(name: "Presh", job: "Friend", age: 20, color: Colors.blue),
    FeedItem(name: "Derek", job: "EIT Daddy", age: 23, color: Colors.black),
    FeedItem(name: "Tumie", job: "Friend", age: 20, color: Colors.purple),
    FeedItem(name: "Mobby", job: "Friendnemy", age: 50, color: Colors.green),
  ];

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
        // child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Choose what you would like to make your habit",
              style: TextStyle(color: Colors.white, fontSize: 32),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: feedItems.length,
                // physics: const NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemBuilder: (BuildContext context, int position) {
                  // String name = feedItems[position];

                  FeedItem item = feedItems[position];
                  return Card(
                    color: item.color ?? Colors.white,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 8),
                      // color: (item.color),

                      height: 100,
                      child: ListTile(
                        title: Text(
                          item.name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 24),
                        ),
                        subtitle: Text(
                          item.job,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                        trailing: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
    // );
  }
}
