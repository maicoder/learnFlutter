main(List<String> args) {
  var superman = SuperMan();
  superman.run();
  superman.fly();
}

mixin Runner {
  run() {
    print("running...");
  }
}

mixin Flyer {
  fly() {
    print("flying");
  }
}

class SuperMan with Runner, Flyer {

}