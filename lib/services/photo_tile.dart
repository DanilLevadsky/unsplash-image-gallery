import 'package:flutter/material.dart';

class PhotoTile extends StatelessWidget {
  final String url;
  final String username;
  final String title;
  final Function onPressed;

  PhotoTile(
      {@required this.url,
      @required this.username,
      @required this.onPressed,
      @required this.title,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
          child: ListTile(
            leading: Container(
                width: 140,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(url), fit: BoxFit.fitWidth)),
            ),
            title: Container(
              margin: EdgeInsets.all(3.5),
              child: Text(
                "$title",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            subtitle: Container(
              margin: EdgeInsets.all(3.5),
              child: Text(
                'by $username',
                style: TextStyle(fontSize: 14.0, color: Colors.black),
              ),
            ),
          ),
        ));
  }
}
