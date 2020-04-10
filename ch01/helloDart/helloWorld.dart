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
}