import 'package:flutter/material.dart';
import 'dart:async';

import 'package:handling_routes/screens/about.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        home: new MyHomePage(title: '应用程序首页'),
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => new AboutPage()
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  String _result = "kas";

  Future<Null> _openNewPage() async {
    var _value = await Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text('new Page'),
        ),
        body: new Center(
            child: new Column(
          children: <Widget>[
            new GestureDetector(
              child: new Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(60.0),
                child: new Text('Next'),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/a');
              },
            ),
            new GestureDetector(
              child: new Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(60.0),
                child: new Text('确定'),
              ),
              onTap: () {
                Navigator.of(context).pop('yyyyyyyy');
              },
            ),
          ],
        )),
      );
    }));

    print(_value);

    setState(() {
      _result = _value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text(
          '用户当前选择为 $_result',
        ),
      ),
      floatingActionButton: new FloatingActionButton(
//        onPressed: _openNewPage,
        onPressed: () {
          showDialog(
              context: context,
              barrierDismissible: false,
              child: new Center(
                  child: new GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Text('ajsasjda')
                  )
              ),
          );
        },

        child: new Icon(Icons.open_in_browser),
      ),
    );
  }
}
