main(List<String> args) {
  // final p = Person();
  // p.name = 'dart';
  // p.age = 18;
  // p.eating();

  final p = Person("flutter", 20);
  print(p);
}

class Animal {
  int age; 

  Animal(this.age);

  void eating() {
    print('eating...');
  }
}

class Person extends Animal {
  String name;

  Person(this.name, int age): super(age);

  @override
  void eating() {
    print("$name eating...");
  }

  @override
  String toString() {
    return "name: $name, age: $age";
  }
}