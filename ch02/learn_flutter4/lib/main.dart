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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: LoginWidget(),
    );
  }
}

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginWidgetState();
  }
}

class LoginWidgetState extends State<LoginWidget> {
  String username;
  String password;

  GlobalKey<FormState> formGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formGlobalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "用户名",
            ),
            onSaved: (value) {
              print("执行了 username 的 onsave方法");
              this.username = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.lock),
              labelText: "密码",
            ),
            onSaved: (value) {
              print("执行了 passwd 的 onsave方法");
              this.password = value;
            },
          ),
          SizedBox( height: 12,),
          Container(
            width: double.infinity,
            height: 44,
            child: RaisedButton(
              child: Text("注册", style: TextStyle(fontSize: 20, color: Colors.white),),
              color: Colors.green,
              onPressed: () {
                print("注册按钮被点击");
                formGlobalKey.currentState.save();
                print("username: $username, passwd: $password");
              },
            ),
          )
        ],
      ),
    );
  }
}

class RegisterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterWidgetState();
  }
}

class RegisterWidgetState extends State<RegisterWidget> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textEditingController.text = "我是默认值";
    textEditingController.addListener(() {
      print("监听到值的改变 ${textEditingController.text}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
              labelText: "username",
              hintText: "请输入用户名",
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 3)
              ),
//              filled: true,
//              fillColor: Colors.purple,
            ),
            onChanged: (value) {
              print("当前的值 $value");
            },
            onSubmitted: (value) {
              print("提交的值 $value");
            },
            controller: textEditingController,
          )
        ],
      ),
    );
  }
}

class RadiusImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

class CircleImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg",
        width: 150,
        height: 150,
      ),
    );
  }
}

class AssetsImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/14757.jpg");
  }
}

class NetworkImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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