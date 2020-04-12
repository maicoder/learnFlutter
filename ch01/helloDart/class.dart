main(List<String> args) {
  final p = Person();
  p.name = 'dart';
  p.age = 18;
  p.eating();
}

class Animal {
  int age; 

  void eating() {
    print('eating...');
  }
}

class Person extends Animal {
  String name;

  @override
  void eating() {
    print('$name eating...');
  }
}