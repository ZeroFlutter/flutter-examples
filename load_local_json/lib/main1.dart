import 'dart:convert';

import 'package:flutter/material.dart';

class MyAppCopy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppCopyState();
  }
}

class MyAppCopyState extends State<MyAppCopy> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('New Page'),
      ),
      body: new Container(
        child: new FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString('data_repo/starwars_data1.json'),
            builder: (context, snapshot) {
              print(snapshot.data);

              var newData = JSON.decode(snapshot.data.toString());

              return new ListView.builder(
                itemBuilder: (context, index) {
                  return new Card(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        new Text("Name: " + newData[index]['name']),
                        new Text("Height: " + newData[index]['height']),
                        new Text("Mass: " + newData[index]['mass']),
                        new Text("Hair Color: " + newData[index]['hair_color']),
                        new Text("Skin Color: " + newData[index]['skin_color']),
                        new Text("Eye Color: " + newData[index]['eye_color']),
                        new Text("Birth Year: " + newData[index]['birth_year']),
                        new Text("Gender: " + newData[index]['gender'])
                      ],
                    ),
                  );
                },
                itemCount: newData == null ? 0 : newData.length,
              );
            }),
      ),
    );

  }
}
