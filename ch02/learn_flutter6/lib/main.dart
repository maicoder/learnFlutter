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
      body: MyGridExtentDemo(),
    );
  }
}

class MyGridExtentDemo extends StatelessWidget {

  List<Widget> getGridWidgets() {
    return List.generate(100, (index) {
      return Container(
        color: Colors.purple,
        alignment: Alignment(0, 0),
        child: Text("item$index", style: TextStyle(fontSize: 20, color: Colors.white)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.0
      ),
      children: getGridWidgets(),
    );
  }
}


