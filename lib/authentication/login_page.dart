import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class FeedItem {
  final String title;
  final String subtitle;
  final IconData icons;
  final Color? color;
  final Color? iconsColor;

  FeedItem({
    required this.title,
    required this.subtitle,
    required this.icons,
    required this.color,
    required this.iconsColor,
  });
}

class _LoginPageState extends State<LoginPage> {
  List<FeedItem> feedItems = [
    FeedItem(
      title: "Speaking skills",
      subtitle: "16 exercises",
      icons: Icons.heart_broken,
      iconsColor: Colors.red,
      color: Color.fromARGB(255, 252, 252, 252),
    ),
    FeedItem(
      title: "Reading speed",
      subtitle: "8 exercises",
      icons: Icons.person,
      iconsColor: Colors.blue,
      color: Colors.white,
    ),
    FeedItem(
      title: "Presentation skills",
      subtitle: "10 exercises",
      icons: Icons.people_alt,
      iconsColor: Colors.grey,
      color: Colors.white,
    ),
    FeedItem(
      title: "Coding skills",
      subtitle: "12 coding challenged",
      icons: Icons.laptop,
      iconsColor: Color.fromARGB(255, 50, 78, 27),
      color: Colors.white,
    ),
    FeedItem(
      title: "Speaking skills",
      subtitle: "16 exercises",
      icons: Icons.heart_broken,
      iconsColor: Colors.red,
      color: Colors.white,
    ),
    FeedItem(
      title: "Reading speed",
      subtitle: "8 exercises",
      icons: Icons.person,
      iconsColor: Colors.blue,
      color: Colors.white,
    ),
    FeedItem(
      title: "Presentation skills",
      subtitle: "10 exercises",
      icons: Icons.people_alt,
      iconsColor: Colors.grey,
      color: Colors.white,
    ),
    FeedItem(
      title: "Coding skills",
      subtitle: "12 coding challenged",
      icons: Icons.laptop,
      iconsColor: Color.fromARGB(255, 50, 78, 27),
      color: Colors.white,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Hi, Jared!",
            style: GoogleFonts.roboto(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
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
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromARGB(137, 59, 124, 177),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 40,
              ),
              labelText: "Search",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
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
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
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
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(14),
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
                  padding: const EdgeInsets.all(14),
                  height: 60,
                  width: 60,
                  color: const Color.fromARGB(255, 57, 166, 255),
                  child: Image.asset("images/fine.png"),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  height: 60,
                  width: 60,
                  color: const Color.fromARGB(255, 57, 166, 255),
                  child: Image.asset("images/well.png"),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 60,
                  width: 60,
                  color: const Color.fromARGB(255, 57, 166, 255),
                  child: Image.asset("images/excellent.png"),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  height: 5,
                  width: 50,
                  color: const Color.fromARGB(255, 57, 166, 255),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercises",
                      style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 67, 65, 65),
                          fontSize: 28,
                          fontWeight: FontWeight.w800),
                    ),
                    const Icon(
                      Icons.more_horiz_outlined,
                      color: Color.fromARGB(255, 67, 65, 65),
                      size: 40,
                      weight: 800,
                    ),
                  ],
                ),

                // Expanded(
                //   child: Container(
                //     color: Colors.black,
                //     height: 300,
                //     child: ListView.builder(
                //       itemCount: feedItems.length,
                //       itemBuilder: (context, index) {
                //         FeedItem item = feedItems[index];
                //         Card(
                //           color: Colors.white,
                //           child: Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 20),
                //             child: ListTile(
                // leading: ClipRRect(
                //   borderRadius: BorderRadius.circular(15),
                //   child: Container(
                //     padding: const EdgeInsets.all(14),
                //     height: 80,
                //     width: 60,
                //     color:
                //         const Color.fromARGB(255, 57, 166, 255),
                //     child: Image.asset("images/fine.png"),
                //   ),
                // ),
                //               title: Text(
                //                 item.title,
                //                 style: GoogleFonts.roboto(
                //                     color:
                //                         const Color.fromARGB(255, 67, 65, 65),
                //                     fontSize: 20,
                //                     fontWeight: FontWeight.w800),
                //               ),
                //               subtitle: Text(
                //                 item.subtitle,
                //                 style: GoogleFonts.roboto(
                //                     color:
                //                         const Color.fromARGB(255, 67, 65, 65),
                //                     fontSize: 18,
                //                     fontWeight: FontWeight.w800),
                //               ),
                //               trailing: const Icon(
                //                 Icons.more_horiz_outlined,
                //                 color: Color.fromARGB(255, 67, 65, 65),
                //                 size: 25,
                //               ),
                //             ),
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                // )

                Expanded(
                  child: ListView.builder(
                    itemCount: feedItems.length,
                    // physics: const NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    itemBuilder: (BuildContext context, int position) {
                      FeedItem item = feedItems[position];
                      return Card(
                        color: item.color ?? Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                padding: const EdgeInsets.all(14),
                                height: 80,
                                width: 60,
                                color: item.iconsColor,
                                child: Icon(
                                  item.icons,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            title: Text(
                              item.title,
                              style: GoogleFonts.roboto(
                                color: Color.fromARGB(255, 67, 65, 65),
                                fontSize: 20,
                              ),
                            ),
                            subtitle: Text(
                              item.subtitle,
                              style: GoogleFonts.roboto(
                                  color: Color.fromARGB(255, 67, 65, 65),
                                  fontSize: 18),
                            ),
                            trailing: const Icon(
                              Icons.more_horiz,
                              color: Color.fromARGB(255, 67, 65, 65),
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
        )),
      ],
    );
  }
}
