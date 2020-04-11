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

class Person {
  String name;
  int age;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  Person(this.name, this.age);

  @override
  String toString() {
    return 'name=$name age=$age';
  }
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


}