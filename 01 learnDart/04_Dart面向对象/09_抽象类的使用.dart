void main(List<String> args) {
  //

  final map = Map();
  print(map.runtimeType);
  // external factory Map();
  // external 可将方法的声明和方法的实现分离
}

// 抽象类中，可以只有方法的声明
// 普通类中，必须要有方法的实现
// 注意1：抽象类不能被实例化，但是可以调用其中的 工厂构造方法
abstract class Shape {
  int getArea();
  String getInfo() {
    return "形状";
  }

  // factory Shape() {
  //   return null;
  // }
}

// 注意1：继承自抽象类后，必须实现抽象类中的抽象方法
class Rectangle extends Shape {
  @override
  int getArea() {
    return 100;
  }
}
