void main(List<String> args) {
  // 常见用法
  var p = Person();
  p.name = "zxd";

  // dart用法
  var p1 = Person()
    ..name = "zxd"
    ..run();
}

class Person {
  var name;

  void run() {
    print("running");
  }

  void eat() {
    print("eating");
  }
}
