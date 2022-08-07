void main(List<String> args) {
  // object 和 dynamic 的区别
  // object 和 dynamic 声明的变量都可以赋值任意对象，且后期可以改变赋值的类型。

  // object 调用方法时，编译时报错；
  // dynamic 调用方法时，编译时不会报错，运行时存在潜在风险。

  // 父类引用指向子类对象
  // Object obj = "zxd";
  // print(obj.substroing(1));

  // dynamic是一个明确的类型， 即 对象类型
  dynamic objc = "zxd";
  objc = 123;
  print(objc.substring(1));
}
