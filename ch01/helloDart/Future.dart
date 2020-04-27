import 'dart:io';

main(List<String> args) {
  print("main function start");
  // print(getNetworkData());

  var future = getNetworkData();
  future.then((value) {
    print(value);
  });
  print(future);

  print("main function end");
}

Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    return "network data";
  });
}

