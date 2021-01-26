import 'package:flutter/material.dart';
import 'package:gallery_application/services/network.dart';
import 'package:gallery_application/services/photo_tile.dart';
import 'photo.dart';

class GalleryScreen extends StatefulWidget {
  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var photos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: Data().getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return PhotoTile(
                    title: snapshot.data[i]['alt_description'] ?? '',
                    url: snapshot.data[i]['urls']['small'],
                    username: snapshot.data[i]['user']['username'],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PhotoScreen(
                                  url: snapshot.data[i]['urls']['full'])));
                    },
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
