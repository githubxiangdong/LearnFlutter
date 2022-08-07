void main(List<String> args) {
  final p = Person();

  // 直接访问属性
  p.name = "zxd";
  print(p.name);

  // 通过setter和 getter访问
  p.setName = "xiaoli";
  print(p.getName);
}

class Person {
  late String name;

  // setter
  set setName(String name) {
    this.name = name;
  }

  // getter
  String get getName {
    return this.name;
  }
}
