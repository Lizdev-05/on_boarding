import 'package:flutter/material.dart';

class FeedItem {
  final String title;
  final String description;
  final String subtitle;
  final Color? color;

  FeedItem(
      {required this.title,
      required this.description,
      required this.subtitle,
      required this.color});
}

class TidyListData extends StatelessWidget {
  TidyListData({super.key});

  final List<FeedItem> feedItems = [
    FeedItem(
        title: "Window Cleaning",
        description:
            "Clean window and window \n frame of various types using \n high quality leaning agents",
        // ignore: unnecessary_string_escapes
        subtitle: "From 100",
        color: const Color.fromARGB(255, 168, 212, 230)),
    FeedItem(
        title: "Carpet Dry Cleaning",
        description:
            "Professionally clean carpet\n using a dry cleaning method \n to remove dirt and stains",
        subtitle: "From 500",
        color: const Color.fromARGB(255, 233, 199, 177)),
    FeedItem(
        title: "Furniture Dry Cleaning",
        description:
            "Professionally clean furniture \n using a dry cleaning method \n to remove dirt and stains",
        subtitle: "From 150",
        color: const Color.fromARGB(255, 213, 197, 255)),
    FeedItem(
        title: "Window Cleaning",
        description:
            "Clean window and window \n frame of various types using \n high quality leaning agents",
        // ignore: unnecessary_string_escapes
        subtitle: "From 100",
        color: const Color.fromARGB(255, 177, 220, 255)),
    FeedItem(
        title: "Carpet Dry Cleaning",
        description:
            "Professionally clean carpet \n using a dry cleaning method \n to remove dirt and stains",
        subtitle: "From 500",
        color: const Color.fromARGB(255, 213, 197, 255)),
    FeedItem(
        title: "Window Cleaning",
        description:
            "Clean window and window \n frame of various types using \n high quality leaning agents",
        // ignore: unnecessary_string_escapes
        subtitle: "From 100",
        color: const Color.fromARGB(255, 233, 199, 177)),
    FeedItem(
        title: "Furniture Dry Cleaning",
        description:
            "Professionally clean furniture \n using a dry cleaning method \n to remove dirt and stains",
        subtitle: "From 150",
        color: const Color.fromARGB(255, 168, 212, 230)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feedItems.length,
      itemBuilder: (context, index) {
        FeedItem item = feedItems[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: item.color ?? Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        item.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(width: 70),
                      Text(
                        item.subtitle,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        item.description,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
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
                          label: const Text("Book"),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
