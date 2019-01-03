import 'package:flutter/material.dart';
import 'package:using_bottom_nav_bar/tabs/first.dart';
import 'package:using_bottom_nav_bar/tabs/second.dart';
import 'package:using_bottom_nav_bar/tabs/third.dart';

void main() {
  runApp(new MaterialApp(
      // Title
      title: "Using Tabs",
      // Home
      home: new MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Using Bottom Navigation Bar"),
        backgroundColor: Colors.blue,
      ),
      body: new TabBarView(
        children: <Widget>[
          new FirstTab(),
          new SecondTab(),
          new ThirdTab(),
          new FirstTab()
        ],
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.white,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
                child: new Column(
              children: <Widget>[
                new Icon(
                  Icons.access_alarm,
                  color: Colors.red,
                ),
                new Text(
                  'asbas',
                  style: new TextStyle(color: Colors.red),
                ),
              ],
            )),
            new Tab(
                child: new Column(
              children: <Widget>[
                new Icon(
                  Icons.access_alarm,
                  color: Colors.red,
                ),
                new Text(
                  'asbas',
                  style: new TextStyle(color: Colors.red),
                ),
              ],
            )),
            new Tab(
                child: new Column(
              children: <Widget>[
                new Icon(
                  Icons.access_alarm,
                  color: Colors.red,
                ),
                new Text(
                  'asbas',
                  style: new TextStyle(color: Colors.red),
                ),
              ],
            )),
            new Tab(
                child: new Column(
              children: <Widget>[
                new Icon(
                  Icons.access_alarm,
                  color: Colors.red,
                ),
                new Text(
                  'asbas',
                  style: new TextStyle(color: Colors.red),
                ),
              ],
            )),
          ],
          // setup the controller

          isScrollable: false,
          indicatorWeight: 2.0,
          indicatorSize: TabBarIndicatorSize.tab,
//          indicatorSize: new tab,
          controller: controller,
        ),
      ),
    );
  }
}
