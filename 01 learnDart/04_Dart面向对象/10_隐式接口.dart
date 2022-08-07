void main(List<String> args) {}

// Dart中没有哪个关键字是来定义接口的
// 没有关键字类似 interface/protocol
// 默认情况下爱所有的类都是隐式接口
// 只支持单继承
class Runner {
  void running() {}
}

class Flyer {
  void flying() {}
}

// 实现多继承 implements
// 普通类当做接口使用时，类中的所有方法必须都要实现
class SuperMan implements Runner, Flyer {
  @override
  void running() {}

  @override
  void flying() {}
}
