void main(List<String> args) {
  sayHello1("zxd");

  sayHello2("zxd1", 20, 180.0);

  // 命名可选参数传参数时，必须有名字，flutter中最常见的写法
  sayHello3("zxd3", age: 18, height: 180.0);
  // 位置随便调
  sayHello3("zxd3", height: 200, age: 20);
}

// 必选参数：必须传
void sayHello1(String name) {
  print(name);
}

// 可选参数：位置可选参数，命名可选参数
// 【注意：只有可选参数才能有默认值】

// 位置可选参数：[int age, double height]
// 实参和形参是按照位置匹配的：传入的参数位置必须一一对应
void sayHello2(String name, [int? age = 10, double? height = 180]) {
  print(name);
}

// 命名可选参数，开发中见得最多
// 命名可选参数传参数时，必须有名字，flutter中最常见的写法
void sayHello3(String name, {int? age, double? height}) {
  print(name);
}
