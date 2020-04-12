/*
class Person {
  String name;

  void run() {
    print("${name} is running");
  }

  void eat() {
    print("${name} is eating");
  }

  void swim() {
    print("${name} is swimming");
  }
}
*/

import 'dart:math';

class Person {
  String name;
  int age;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  // Person(this.name, this.age);

  Person() {
    name = '';
    age = 0;
  }

  Person.withArgments(String name, int age) {
    this.name = name;
    this.age = age;
  }

  Person.fromMap(Map<String, Object> map) {
    this.name = map['name'];
    this.age = map['age'];
  }

  @override
  String toString() {
    return 'name=$name age=$age';
  }
}

// 重定向构造函数
class Person1 {
  String name;
  int age;

  Person1(this.name, this.age);
  Person1.fromName(String name): this(name, 0);
}

// 常量构造函数
class Person2 {
  final String name;

  const Person2(this.name);
}

class Point {
  final num x;
  final num y;
  final num distance;

  // 初始化列表
  Point(this.x, this.y): distance = sqrt(x * x + y * y);

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

class Person3 {
  String name;

  static final Map<String, Person3> _cache = <String, Person3>{};

  factory Person3(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final p = Person3._internal(name);
      _cache[name] = p;
      return p;
    }
  }

  Person3._internal(this.name);
}

main(List<String> args) {
  /*
  final p1 = Person();
  p1.name = 'dart';
  p1.run();
  p1.eat();
  p1.swim();

  final p2 = Person()
              ..name = "flutter"
              ..run()
              ..eat()
              ..swim();
  */

  /*
  var num = 7;
  print(num / 3);
  print(num ~/ 3);
  print(num % 3);

  var name1 = 'dart';
  print(name1);
  // var name2 = 'flutter';
  var name2 = null;
  name2 ??= 'coder';
  print(name2);

  // var temp = 'hello';
  var temp = null;
  var name = temp ?? 'dart';
  print(name); 
  */

  var p1 = Person();
  print(p1);
  var p2 = Person.withArgments('dart', 18);
  print(p2);
  var p3 = new Person.fromMap({'name': 'flutter', 'age': 20});
  print(p3);

  var p4 = const Person2('dart');
  var p5 = const Person2('dart');

  print(identical(p4, p5));

  var p6 = Person3('flutter');
  var p7 = Person3('flutter');

  print(identical(p6, p7));
}