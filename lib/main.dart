import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class Note {
  String title;
  String body;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Notes'),
      routes: <String, WidgetBuilder>{
        '/addNotes': (BuildContext context) => new NotesPage(title: 'Take Note'),
      },
    );
  }
}

class NotesPage extends StatelessWidget {
  final String title;
  NotesPage({this.title});

  void _save() {

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.save), tooltip: 'Save Note', onPressed: _save),
        ],
      ),
      body:
      new Center(
        child: new Column(
          children:[
            new TextField(

            ),
            new TextField()
          ]
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _noteList = <Note>[];
  void _addNotesScreen() {
    Navigator.of(context).pushNamed('/addNotes');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              'ff',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _addNotesScreen,
        tooltip: 'Add Note',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
