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
      appBar: AppBar(
        title: Text(""),
      ),
      body: MyHomeBody(),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Icon(Icons.pets, size: 36, color: Colors.red,),
      alignment: Alignment.bottomRight,
      widthFactor: 3,
      heightFactor: 3,
    );
  }
}

