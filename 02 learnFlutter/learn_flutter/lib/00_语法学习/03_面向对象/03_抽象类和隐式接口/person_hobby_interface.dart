
/// 2. 隐式接口实现
/// Dart中没有哪个关键字是来定义接口的，如 interface/protocol
/// 1. 默认情况下所有的类都是隐式接口
/// 2. 实现类可通过 implements 关键字，来实现所有的接口
/// 3. 如果将一个类当做接口使用时，实现这个接口的类必须实现这个接口中的所有方法

class PersonHobbyInterface {
  // 实现类中，必须实现下面所有的方法
  void eating() {}
  void drinking() {}
}