import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  static const String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail Page"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.yellow,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Detail Page\nClick on below icon to goto Home Page",
                style: new TextStyle(fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
              new IconButton(
                icon: new Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                onPressed: () {
//                  Navigator.of(context).popAndPushNamed('/');//当前的路由被销毁,但中间路由被保存
//                  Navigator.popUntil(context,RoutePredicate);//当前的路由被销毁,但中间路由被保存


                },
                iconSize: 60.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
