import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  List<Map<String, dynamic>> musicItems = [
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": false,
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true,
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": true
    },
    {
      "name": "Hit Song",
      "title": "Heat on",
      "profile":
          "https://cdn.vox-cdn.com/thumbor/8fHlyH3tqfMxAHz0hXowSXaZuis=/2x0:996x746/1200x800/filters:focal(2x0:996x746)/cdn.vox-cdn.com/uploads/chorus_image/image/48729983/shutterstock_93888712.0.0.jpg",
      "is_audio": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      child: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            Map<String, dynamic> item = musicItems[index];
            return Container(
              // height: 50,
              // color: Colors.amber,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(
                      item["is_audio"] ? 16 : 30),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image.network(
                      item["profile"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                title: Text(
                  item["name"],
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                subtitle: Text(
                  item["title"],
                  style: TextStyle(
                      color: Colors.white.withAlpha(100), fontSize: 16),
                ),
                trailing: Icon(Icons.more_horiz),
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) {
            return const SizedBox(
              height: 10,
              // color: Colors.transparent,
            );
          },
          itemCount: musicItems.length),
    );
  }
}
