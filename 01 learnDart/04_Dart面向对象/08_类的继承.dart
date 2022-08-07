void main(List<String> args) {}

class Person {
  late String name;

  Person(this.name);
}

// 继承 自 Person
class Student extends Person {
  late int age;

  // 创建构造函数
  Student(this.age, String name) : super(name);
}
