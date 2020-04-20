import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      home: ContentWidget()
    );
  }
}

class ContentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("我是标题"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print("监听按钮点击");
                setState(() {
                  counter++;
                });
              },
              child: Text("计数+1"),
            ),
            Text("当前计数：$counter", style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("监听 FloatActionButton");
          _incrementCounter();
        },
      ),
    );
  }
}

//class ContentWidgetState extends State<ContentWidget> {
//  int counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          RaisedButton(
//            onPressed: () {
//              print("监听按钮点击");
//              setState(() {
//                counter++;
//              });
//            },
//            child: Text("计数+1"),
//          ),
//          Text("当前计数：$counter", style: TextStyle(fontSize: 25)),
//        ],
//      ),
//    );
//  }
//}

// 不能实现
//class ContentWidget extends StatelessWidget {
//  final int counter = 0;
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          RaisedButton(
//            onPressed: () {
//              print("监听按钮点击");
//            },
//            child: Text("计数+1"),
//          ),
//          Text("当前计数：0", style: TextStyle(fontSize: 25)),
//        ],
//      ),
//    );
//  }
//}
