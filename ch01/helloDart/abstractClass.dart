abstract class Shape {
  getArea();
}

class Circle extends Shape {
  double r;

  @override
  getArea() {
    return r * r * 3.14;
  }
}

class Reactangle extends Shape {
  double w;
  double h;

  Reactangle(this.w, this.h);

  @override
  getArea() {
    return w * h;
  }
}

abstract class Runner {
  run();
}

abstract class Flyer {
  fly();
}

class SuperMan implements Runner, Flyer {
  @override
  run() {
    print('superman is running');
  }

  @override
  fly() {
    print("superman is flying");
  }
}