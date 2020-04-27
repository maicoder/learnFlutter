import 'dart:io';

main(List<String> args) {
  print("main function start");
  
  print(getNetworkData());

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

  // Future.error(Exception("errormessage")).catchError((error) {
  //   print(error);
  // });

  // Future.delayed(Duration(seconds: 3), () {
  //   return "3秒后信息";
  // }).then((value) {
  //   print(value);
  // });

  print("main function end");
}

Future<String> getNetworkData() async {
  var result = await Future.delayed(Duration(seconds: 3), () {
    return "network data";
  });
  return "请求到的数据：" + result;
}

