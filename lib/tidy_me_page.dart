import 'package:flutter/material.dart';
import 'package:on_bord/tidy_list_data.dart';

class TidyMePage extends StatefulWidget {
  const TidyMePage({super.key});

  @override
  State<TidyMePage> createState() => _TidyMePageState();
}

class _TidyMePageState extends State<TidyMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Icon(
              Icons.alarm,
              color: Color.fromARGB(255, 244, 236, 236),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 37, 36, 36),
        title: const Text(
          "Home",
          style: TextStyle(color: Color.fromARGB(255, 244, 236, 236)),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              leading: const Text(
                "Our Offers",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 28,
                ), // Place the icon first
                label: const Text("View All",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Get 5% off",
                            style: TextStyle(color: Colors.black, fontSize: 38),
                          ),
                          SizedBox(width: 100),
                          Row(
                            children: [
                              Icon(
                                Icons.adb_rounded,
                                color: Colors.black,
                                size: 28,
                              ),
                              Icon(
                                Icons.adb_rounded,
                                color: Colors.black,
                                size: 28,
                              ),
                              Icon(
                                Icons.adb_rounded,
                                color: Colors.black,
                                size: 28,
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "Use cleaning service \n on a regular basis",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: OutlinedButton.icon(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 31, 30, 30),
                                  foregroundColor: Colors.white
                                  // textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                              icon: const Icon(Icons.arrow_right_alt),
                              label: const Text("Check it out"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: TidyListData(),
            )
          ],
        ),
      ),
    );
  }
}
