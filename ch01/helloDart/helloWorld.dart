main(List<String> args) {
  print('Hello World');

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
}