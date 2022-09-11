import 'package:flutter/material.dart';

/// 在前面我们讲述类的构造方法时，只讲了对象方法，但是没有提到类级别的方法
/// dart中药访问类级别的方法或是属性，可以用 static 修饰

class StudentInfo {
  // 对象属性
  double? grade;

  // 类属性
  static String? name;

  // 对象方法
  /// void 可以省略
  void study() {
    debugPrint("这个人学习很刻苦，成绩总是在$grade分以上");
  }

  // 类方法
  static run() {
    debugPrint("$name在跑步");
  }
}