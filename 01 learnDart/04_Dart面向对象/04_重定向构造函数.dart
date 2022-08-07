void main(List<String> args) {
  var p = Person("zxd");
  print(p.age);
}

class Person {
  late String name;
  late int age;

  // 给age设置初始化值
  // 1. 直接利用初始化列表
  // Person(this.name): age = 0;

  // 2. 也可用函数的重定向
  Person(String name) : this._internal(name, 0);

  Person._internal(this.name, this.age);
}
