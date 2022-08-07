void main(List<String> args) {
  var p = Person("zxd", 18);
}

// 最基本的语法
class Person {
  late String name;
  late int age;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // 这种写法等价于下面的写法(语法糖)
  Person(this.name, this.age);
}
