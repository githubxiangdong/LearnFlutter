import 'package:flutter/material.dart';
import 'package:learn_flutter/00_语法学习/03_面向对象/03_抽象类和隐式接口/person_hobby_interface.dart';
import 'package:learn_flutter/00_语法学习/03_面向对象/03_抽象类和隐式接口/person_hobby_abstract.dart';

/// 我现在有个 person 类，里面要实现两个方法，running和playing
/// 一般的都会抽成一个接口（iOS中是一个协议）然后去在具体类中实现这个接口即可

/// 单继承
class Person extends PersonHobbyAbstract {
  /// 1. 继承自抽象类后，必须实现抽象类中的抽象方法

  @override
  void running() {
    debugPrint("这个人的爱好是： 跑步");
  }

  @override
  void playing() {
    debugPrint("这个人的爱好是： 打篮球");
  }

  // @override
  // double height() {
  //   return 200;
  // }
}

/// 多实现
/// to do extends  implements 区别
class Student implements PersonHobbyInterface, PersonHobbyAbstract {
  /// 1. 继承自抽象类后，必须实现抽象类中的抽象方法
  @override
  void running() {
    debugPrint("这个学生的爱好是： 跑步");
  }

  @override
  void playing() {
    debugPrint("这个学生的爱好是： 打篮球");
  }

  @override
  double height() {
    return 200;
  }

  /// 2. 普通类当做接口使用时，类中的所有方法必须都要实现
  @override
  void eating() {
    debugPrint("这个学生的爱好是：吃");
  }

  @override
  void drinking() {
    debugPrint("这个学生的爱好是：喝");
  }
}

