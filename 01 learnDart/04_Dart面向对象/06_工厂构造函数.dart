void main(List<String> args) {
  // const p1 = Person("zxd");
  // const p2 = Person("zxd");

  // print(identical(p1, p2));

  final p3 = Person1.withName("zxd");
  final p4 = Person1.withName("zxd");
  print(identical(p3, p4));
}

// 如果传入的name相同时，返回的是同一个对象
// 如果传入的color相同时，返回的是同一个对象

// 第一种做法：利用常量构造函数，显然 color是无法满足需求的
class Person {
  final String name;
  final String color = "red";

  const Person(this.name);
}

// 第二种：工厂构造函数
// 工厂构造函数最大的特点，手动的返回一个对象
// 普通的构造函数不用自己手动的返回一个对象，会自动返回创建的对象
class Person1 {
  late String name;
  late String color;

  // 创建两个缓存
  static final Map<String, Person1> _nameCahe = {};
  static final Map<String, Person1> _colorCahe = {};

  factory Person1.withName(String name) {
    if (_nameCahe.containsKey(name)) {
      return _nameCahe[name] ?? Person1(name, "default");
    } else {
      final p = Person1(name, "default");
      _nameCahe[name] = p;
      return p;
    }
  }

  factory Person1.withColor(String color) {
    if (_colorCahe.containsKey(color)) {
      return _colorCahe[color] ?? Person1("default", color);
    } else {
      final p = Person1("default", color);
      _colorCahe[color] = p;
      return p;
    }
  }

  Person1(this.name, this.color);
}
