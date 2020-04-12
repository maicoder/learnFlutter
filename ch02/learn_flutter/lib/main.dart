import 'package:flutter/material.dart';

/**
 * 1.创建 main 函数
 * 2.执行 runApp 函数
 * 3.传入 widget -> Text widget
 */
main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HelloFlutter"),
        ),
        body: Center(
          child: Text(
            "Hello World",
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 30)
          ),
        ),
      ),
    )
  );
}