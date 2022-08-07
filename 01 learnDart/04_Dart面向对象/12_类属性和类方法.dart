void main(List<String> args) {
  Person.courseTime = "10";
  print(Person.courseTime);
}

class Person {
  // 成员属性
  late String name;

  // 静态属性(类属性)
  static String courseTime = "0";

  // 对象方法
  void eating() {
    print("eating");
  }

  // 类方法
  static void runing() {
    print("runing");
  }
}
