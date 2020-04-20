import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: ContentWidget(),
      )
    );
  }
}

class ContentWidget extends StatefulWidget {
  ContentWidget() {
    print("ContentWidget 构造函数被调用");
  }

  @override
  State<StatefulWidget> createState() {
    print("ContentWidget 的 createState 被调用");
    return ContentWidgetState();
  }
}

class ContentWidgetState extends State<ContentWidget> {
  int _counter = 0;

  ContentWidgetState() {
    print("ContentWidgetState 构造函数被调用");
  }

  @override
  void initState() {
    super.initState();
    print("ContentWidgetState 的 initState 函数被调用");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("ContentWidgetState 的 didChangeDependencies 函数被调用");
  }

  @override
  void didUpdateWidget(ContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("ContentWidgetState 的 didUpdateWidget 函数被调用");
  }

  @override
  Widget build(BuildContext context) {
    print("ContentWidgetState 的 build 函数被调用");
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: Text("计数+1"),
          ),
          Text("Hello World: $_counter", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
