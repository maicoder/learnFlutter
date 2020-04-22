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
        title: Text("HelloFlutter"),
      ),
      body: MyHomeBody(),
    );
  }
}

class MyHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromRGBO(3, 3, 255, .5),
        width: 100,
        height: 100,
        child: Icon(Icons.pets, size: 32, color: Colors.white,),
      ),
    );
  }
}

//class PaddingDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Padding(
//      padding: EdgeInsets.all(20),
//      child: Text(
//        "莫听穿林打叶声，何妨吟啸且徐行。竹杖芒鞋轻胜马，谁怕？一蓑烟雨任平生。",
//        style: TextStyle(
////          backgroundColor: Colors.green,
////          background: Paint()..color.green,
//          color: Colors.redAccent,
//          fontSize: 18
//        ),
//      ),
//    );
//  }
//}


//class CenterDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Icon(Icons.pets, size: 36, color: Colors.red,),
//      widthFactor: 3,
//      heightFactor: 3,
//    );
//  }
//}

/// Align
//class AlignDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Align(
//      child: Icon(Icons.pets, size: 36, color: Colors.red,),
//      alignment: Alignment.bottomRight,
//      widthFactor: 3,
//      heightFactor: 3,
//    );
//  }
//}

