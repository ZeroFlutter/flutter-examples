import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppCopy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Zero wolf',
      theme: new ThemeData(
          primaryColor: Colors.blue, accentColor: Colors.lightBlue),
      home: new RandomWords1(),
    );
  }
}

class RandomWords1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RandomWordsState1();
  }
}

class RandomWordsState1 extends State<RandomWords1> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('New Page Copy'),
      ),
      body: _buildSuggestion(),
//      body: new Center(
//        child: new Text('askdasdl'),
//      ),
    );
  }

  Widget _buildSuggestion() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
          if (index.isOdd) {
            //是否是奇数
            return new Divider();
          }
          final curIndex = index ~/ 2; // 相当于模余运算
          //1~~0   2~~1  3~~1  4~~2  5~~2
          if (curIndex >= _suggestions.length) {
//            print(generateWordPairs().take(10));

            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[curIndex]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
