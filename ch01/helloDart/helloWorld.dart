/*
String getName() {
  return 'HelloFlutter';
}
*/
/*
main(List<String> args) {
  print('Hello World');

/*
  String name = 'HelloFlutter';
  int age = 18;
  double height = 1.88;
  print('${name}, ${age}, ${height}');

  String content = 'Hello Dart';
  content = 'Hello World';
  // content = 111;

  var aname = 'HelloDarter';
  aname = 'flutter';
  print(aname.runtimeType);

  dynamic bname = 'HelloDater';
  print(bname.runtimeType);
  bname = 18;
  print(bname.runtimeType);

  final cname = 'HelloDarter';
  // cname = 'flutter'; // 动态获取，赋值一个函数
  const aage = 18;
  // aage = 20;  // 赋值的内容必须在编译期间确定
*/

  // const name = getName();
  final name = getName();
  print(name);
}
*/

class Person {
  const Person();
}

main(List<String> args) {
  /*
  final a = const Person();
  final b = const Person();
  print(identical(a, b));

  final m = Person();
  final n = Person();
  print(identical(m,n));
  */

/*
  int age = 18;
  int hexAge = 0x12;
  print(age);
  print(hexAge);

  double height = 1.88;
  print(height);

  var one = int.parse('111');
  var two = double.parse('12.22');
  print('${one} ${one.runtimeType}');
  print('${two} ${two.runtimeType}');

  var num1 = 123;
  var num2 = 123.456;
  var num1Str = num1.toString();
  var num2Str = num2.toString();
  var num2StrD = num2.toStringAsFixed(2);
  print('${num1Str} ${num1Str.runtimeType}');
  print('${num2Str} ${num2Str.runtimeType}');
  print('${num2StrD} ${num2StrD.runtimeType}');

  var isFlag = true;
  print('$isFlag ${isFlag.runtimeType}');

  var s1 = 'Hello World';
  var s2 = "Hello Dart";
  var s3 = 'Hello\'Flutter';
  var s4 = "Hello'Flutter";
  var message1 = '''
  hhh
  kkk
  mmm
  ''';
  var name = 'HelloDarter';
  var age1 = 18;
  var height1 = 1.88;
  print('my name is ${name}, age is $age, height is $height1.');
  */

/*
  // List, Set, Map
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}');

  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}');

  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');

  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');

  var infoMap1 = {'name': 'Darter', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

  Map<String, Object> infoMap2 = {'height': 2.20, 'address': 'hz'};
  print('$infoMap2 ${infoMap2.runtimeType}');

  print(letters.length);
  print(lettersSet.length);
  print(infoMap1.length);

  numbers.add(5);
  numbersSet.add(5);
  print('$numbers $numbersSet');

  numbers.remove(1);
  numbersSet.remove(1);
  print('$numbers $numbersSet');

  print(numbers.contains(2));
  print(numbersSet.contains(2));

  numbers.removeAt(3);
  print('$numbers');

  print(infoMap1['name']);
  print('${infoMap1.entries} ${infoMap1.entries.runtimeType}');
  print('${infoMap1.keys} ${infoMap1.keys.runtimeType}');
  print('${infoMap1.values} ${infoMap1.values.runtimeType}');
  print('${infoMap1.containsKey('age')} ${infoMap1.containsValue(18)}');
  infoMap1.remove('age');
  print('${infoMap1}');
  */

  // function
  var bar = foo;
  print(bar);

  test(foo);

  var func = getFunc();
  func('flutter');

  // Closure/lambda
  var movies = ['a', 'b', 'c', 'd'];
  printElement(item) {
    print(item);
  }
  movies.forEach(printElement);

  movies.forEach((item) {
    print(item);
  });
  movies.forEach((item) => print(item));
}

foo(String name) {
  print('传入的name:$name');
}

test(Function func) {
  func('hellodart');
}

getFunc() {
  return foo;
}