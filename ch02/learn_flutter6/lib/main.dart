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
      body: MySeparatedDemo(),
    );
  }
}

class MySeparatedDemo extends StatelessWidget {
  Divider blueColor = Divider(color: Colors.blue);
  Divider redColor = Divider(color: Colors.red);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.people),
            title: Text("联系人${index+1}"),
            subtitle: Text("联系人电话${index+1}"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? redColor : blueColor;
        },
        itemCount: 100
    );
  }
}


