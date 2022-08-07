import 'dart:ffi';

// https://dart.dev/guides/language/language-tour
void main(List<String> args) {
  // 1, 明确的声明
  String name = "zxd";

  // 2, 类型推导(var, final, const)
  // 类型推导的方式虽然没有明确的指定变量类型，但是变量是有自己的明确类型
  // 2.1 var是声明变量的
  var age = 30;
  // age = "abc"; // 有了明确的类型后，就不能赋值其他类型的
  age = 40;

  // 2.2 finale声明常量，值不可改变
  final height = 180;
  // height = 200;

  // 2.3 const，声明常量
  const addess = "北京中关村";
  // addess = "海淀区";

  // 2.4 final 和 const的区别
  // const 必须赋值常量值（编译期间需要有个确定的值）
  // final 可以通过计算/函数获取一个值（运行期间确定一个值即可）

  // const date1 = DateTime.now(); // 写发错误
  final date2 = DateTime.now();

  // 开发中，final 用的更多一点
  // 当前p1 和 p2是不是同一个对象, 不是同一个
  // final p1 = Person("zxd");
  // final p2 = Person("zxd");
  // print(identical(p1, p2));

  // const
  const p1 = Person("zxd1");
  const p2 = Person("zxd2");
  print(identical(p1, p2));

  // dynamic object
}

class Person {
  final name;
  // 初始化列表
  const Person(this.name);
}
