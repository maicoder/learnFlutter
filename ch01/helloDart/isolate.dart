import "dart:isolate";

main(List<String> args) {
  Isolate.spawn(foo, "Hello Isolate");
}

void foo(info) {
  print("新的isolate：$info");
}
