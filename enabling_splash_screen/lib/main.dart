import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Splash Screen Example"),
        ),
        body: new Center(
          child: new Text("Hello World"),
        ),
      ),
    );
  }
}

class MyAppa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'hahahah',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('splash Screen'),
        ),
        body: new Center(
          child: new Text('hello world'),
        ),
      ),
    );

  }

}
