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
  final a = const Person();
  final b = const Person();
  print(identical(a, b));

  final m = Person();
  final n = Person();
  print(identical(m,n));
}