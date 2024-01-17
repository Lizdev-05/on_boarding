import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Text(
          "Tracks",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        child: ListView.separated(
            itemBuilder: (BuildContext context, index) {
              return Container(
                // height: 50,
                // color: Colors.amber,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(16),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.network(
                        "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    "University Graduate",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    "Univerity of Ghana",
                    style: TextStyle(
                        color: Colors.white.withAlpha(100), fontSize: 16),
                  ),
                  trailing: Icon(Icons.more_horiz),
                ),
              );
            },
            separatorBuilder: (BuildContext context, index) {
              return SizedBox(
                height: 10,
                // color: Colors.transparent,
              );
            },
            itemCount: 20),
      ),
    );
  }
}
