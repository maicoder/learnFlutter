import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body: MyHomeBody(),
    );
  }
}

class MyHomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 200,
      children: <Widget>[
        Container(color: Colors.red, width: 200),
        Container(color: Colors.green, width: 200),
        Container(color: Colors.blue, width: 200),
        Container(color: Colors.purple, width: 200),
        Container(color: Colors.orange, width: 200),
        Container(color: Colors.red, width: 200),
        Container(color: Colors.green, width: 200),
        Container(color: Colors.blue, width: 200),
        Container(color: Colors.purple, width: 200),
        Container(color: Colors.orange, width: 200),
      ],
    );
  }
}

