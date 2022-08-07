import '../01_Dart基本语法/02_声明变量.dart';
import '../02_Dart函数使用/04_函数是一等公民(typedef).dart';

void main(List<String> args) {
  const p1 = Person("zxd");
  const p2 = Person("zxd");

  // p1 和 p2 是一个东西，同一个对象
  print(identical(p1, p2));
}

class Person {
  final String name;

  // 常量构造函数，类似于 单例，一个类中只有一个常量构造函数
  const Person(this.name);
}
