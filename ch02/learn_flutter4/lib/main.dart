import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: ContentWidget(),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/14757.jpg");
  }
}

class NetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        height: 300,
        color: Colors.red,
        child: Image.network(
          "http://img0.dili360.com/ga/M01/48/3C/wKgBy1kj49qAMVd7ADKmuZ9jug8377.tub.jpg",
//          fit: BoxFit.fill,
          repeat: ImageRepeat.repeatY,
        ),
      ),
    );
  }
}

class CustomButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () => print("按钮发生点击"),
        color: Colors.red,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.people, color: Colors.white,),
            SizedBox(width: 10,),
            Text("按钮", style: TextStyle(fontSize: 20, color: Colors.white),),
          ],
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("RaisedButton Click"),
          onPressed: () => print("RaisedButton Click"),
        ),
        FlatButton(
            onPressed: () => print("FlatButton Click"),
            child: Text("FlatButton Click")
        ),
        OutlineButton(
          onPressed: () => print("OutlineButton Click"),
          child: Text("OutlineButton Click"),
        ),
        FloatingActionButton(
            onPressed: () => print("FloatingActionButton Click"),
            child: Text("FloatingActionButton Click")
        )
      ],
    );
  }
}

class TextRichDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          children: [
            TextSpan(
                text: "《定风波》",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
            ),
            TextSpan(
                text: "苏轼",
                style: TextStyle(fontSize: 18, color: Colors.red)
            ),
            TextSpan(
                text: "\n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
                style: TextStyle(fontSize: 20, color: Colors.purple)
            )
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "《定风波》 苏轼 \n莫听穿林打叶声，何妨吟啸且徐行。\n竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 2,
    );
  }
}