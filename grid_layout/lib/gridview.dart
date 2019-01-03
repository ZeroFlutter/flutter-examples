import 'package:flutter/material.dart';

class MyGridView {
  Card getStructuredGridCell(name, image) {
    return new Card(
        elevation: 10.0,
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Container(
              color: Colors.red,
              child: new Image(height:120.0,image: new AssetImage('data_repo/img/' + image)),
            ),
            new Container(
                color: Colors.lightBlueAccent,
                child: new Center(
                  child: new Text(name),
                ))
          ],
        ));
  }

  GridView build() {
    return new GridView.count(
      primary: true,
      padding: const EdgeInsets.all(10.0),
      crossAxisCount: 3,
      childAspectRatio: 1 / 1.5,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: <Widget>[
        getStructuredGridCell("Facebook", "social/facebook.png"),
        getStructuredGridCell("Twitter", "social/twitter.png"),
        getStructuredGridCell("Instagram", "social/instagram.png"),
        getStructuredGridCell("Linkedin", "social/linkedin.png"),
        getStructuredGridCell("Gooogle Plus", "social/google_plus.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
        getStructuredGridCell("Launcher Icon", "ic_launcher.png"),
      ],
    );
  }
}
