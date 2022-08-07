import 'dart:collection';

void main(List<String> args) {
  final p = SuperMan();
  p.running();
  p.flying();
}

mixin Runner {
  void running() {
    print("Runner - running");
  }
}

mixin Flyer {
  void flying() {
    print("Flyer - flying");
  }
}

// 混入用的是 with 引入被混入的类
// 混入的类必须是被 mixin 修饰，不在被 class 修饰
// 混入的类中的方法，无需在被混入类中重写，如果重写，会覆盖混入类的方法
class SuperMan with Runner, Flyer {
  @override
  void flying() {
    print("SuperMan - flying");
  }
}
