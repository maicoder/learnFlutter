import 'dart:io';

main(List<String> args) {
  print("main function start");
  // print(getNetworkData());

  // var future = getNetworkData();
  // future.then((value) {
  //   print(value);
  //   return "content data2";
  // }).then((value) {
  //   print(value);
  //   return "message data3";
  // }).then((value) {
  //   print(value);
  // });
  // print(future);

  // Future.value("hahaha").then((value) {
  //   print(value);
  // });

  Future.error(Exception("errormessage")).catchError((error) {
    print(error);
  });

  print("main function end");
}

Future<String> getNetworkData() {
  return Future<String>(() {
    sleep(Duration(seconds: 3));
    return "network data1";
    // throw Exception("network error...");
  });
}

