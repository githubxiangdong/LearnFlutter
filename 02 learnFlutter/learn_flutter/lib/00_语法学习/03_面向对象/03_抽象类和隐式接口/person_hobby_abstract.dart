import 'package:flutter/material.dart';

/// 1. 抽象类实现接口
///
/// 抽象类中，可以只有方法的声明，不必有方法的实现 (普通类中，必须要有方法的实现)
/// 抽象类，不能被实例化
abstract class PersonHobbyAbstract {
  /// 没有方法的实现
  void running();
  void playing();

  /// 可以有方法的实现
  double _height() {
    return 180.0;
  }
}