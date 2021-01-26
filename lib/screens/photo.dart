import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  final String url;

  const PhotoScreen({Key key, this.url}) : super(key: key);
  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Image.network(widget.url)),
    );
  }
}
