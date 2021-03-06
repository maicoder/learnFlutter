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
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.purple,
          width: 300,
          height: 300,
        ),
        Positioned(
          child: Icon(Icons.favorite, size: 100, color: Colors.white,),
          left: 20,
          top: 20,
        ),
        Positioned(
          child: Text("Hello Flutter", style: TextStyle(fontSize: 20, color: Colors.yellow),),
          bottom: 20,
          right: 20,
        )
      ],
    );
  }
}

//class ColumnDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      crossAxisAlignment: CrossAxisAlignment.center,
//      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Expanded(
//          child: Container(color: Colors.orange, width: 50,),
//          flex: 1,
//        ),
//        Container(color: Colors.red, width: 80, height: 80,),
//        Container(color: Colors.green, width: 70, height: 70,),
//        Container(color: Colors.purple, width: 150, height: 150,),
//        Expanded(
//          child: Container(color: Colors.blue, width: 150, ),
//          flex: 1,
//        )
//      ],
//    );
//  }
//}

//class ExpandedDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      crossAxisAlignment: CrossAxisAlignment.end,
//      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Expanded(
//          flex: 1,
//          child: Container(color: Colors.red, height: 60,),
//        ),
//        Container(color: Colors.blue, width: 80, height: 80,),
//        Container(color: Colors.green, width: 70, height: 70,),
//        Expanded(
//          child: Container(color: Colors.orange, height: 100,),
//          flex: 1,
//        )
//      ],
//    );
//  }
//}

//class RowDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      crossAxisAlignment: CrossAxisAlignment.end,
////      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Container(color: Colors.red, width: 60, height: 60,),
//        Container(color: Colors.blue, width: 80, height: 80,),
//        Container(color: Colors.green, width: 70, height: 70,),
//        Container(color: Colors.orange, width: 100, height: 100,)
//      ],
//    );
//  }
//}

//class BorderRadiusDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        width: 200,
//        height: 200,
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(20),
//          image: DecorationImage(image: NetworkImage("https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"))
//        ),
//      ),
//    );
//  }
//}

//class BoxDecorationDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        width: 150,
//        height: 150,
//        child: Icon(Icons.pets, size: 32, color: Colors.white,),
//        decoration: BoxDecoration(
//          color: Colors.amber,
//          border: Border.all(
//            color: Colors.redAccent,
//            width: 3,
//            style: BorderStyle.solid,
//          ),
//          borderRadius: BorderRadius.circular(20),
//          boxShadow: [
//            BoxShadow(
//              offset: Offset(5, 5),
//              color: Colors.blue,
//              blurRadius: 5
//            )
//          ],
//          gradient: LinearGradient(
//              colors: [Colors.green, Colors.red]
//          )
//        ),
//      ),
//    );
//  }
//}

//class ContainerDemo extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Container(
//        color: Color.fromRGBO(3, 3, 255, .5),
//        width: 100,
//        height: 100,
//        child: Icon(Icons.pets, size: 32, color: Colors.white,),
//      ),
//    );
//  }
//}

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

