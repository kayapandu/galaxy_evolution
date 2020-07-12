import 'package:flutter/material.dart';
import 'package:galaxy/model/galaxy.dart';

class DetailScreen extends StatelessWidget {
  final Galaxy item;

  DetailScreen(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: <Widget>[FavoriteButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset(item.image_url)),
                Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(item.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0))),
              ],
            ),
            Container(
                padding: EdgeInsets.all(18.0),
                child: Text(item.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 20.0))),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(isFavorite ? Icons.star : Icons.star_border,
            color: Colors.yellow));
  }
}
