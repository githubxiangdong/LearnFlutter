import 'package:flutter/material.dart';

/// 1. 普通类
class BasePerson {
  // final String name;
  // BasePerson(this.name);

  String? name;
  BasePerson(String name) {
    this.name = name;
    debugPrint("BasePerson 构造方法 $name");
  }

  run() {
    debugPrint("$name在跑步");
  }
}

/// 2. 抽象类
/// 抽象类中，可以只有方法的声明，不必有方法的实现 (普通类中，必须要有方法的实现)
/// 抽象类，不能被实例化
abstract class BasePerson2 {
  final String name;
  BasePerson2(this.name);

  run() {
    debugPrint("$name在跑步");
  }

  play();
}

/// 1. extends 关键字继承
/// 如果是用 extends，是将父类的所有 方法 和 属性 都继承过来
/// 构造方法需要用super指定

/// 继承普通类
class StudentSub extends BasePerson  {
  final int age;

  // 1. extends 一定会调用父类的构造方法
  StudentSub(this.age, String name) : super(name);

  // 2. 可以不用实现父类中已经实现的方法
  @override
  run() {
    debugPrint("StudentSub: $name在跑步");
  }
}

/// 继承抽象类
class StudentSub3 extends BasePerson2  {
  final int age;

  // 1. extends 一定会调用父类的构造方法
  StudentSub3(this.age, String name) : super(name);

  // 2. 可以不用实现父类中已经实现的方法
  @override
  run() {
    debugPrint("StudentSub: $name在跑步");
  }

  // 3. 抽象类中没有实现的方法，子类中必须实现
  @override
  play() {
    debugPrint("StudentSub: $name在玩耍");
  }
}

/// 2. implements
/// 如果是用 implements，那就相当于将 BasePerson当做接口使用
/// 2.1 里面的 接口 和 属性 都必须继承实现
/// 2.2 在实现构造方法时，不能继承父类的构造方法，也就是说不能用 super

/// 实现普通类
class StudentSub2 implements BasePerson  {
  final int age;

  // 1. implements里不能有super，即不能调用基类的构造方法
  // 也就是说下面的构造方法是不被允许的
  // StudentSub(this.age, String name) : super(name);
  // 只能写自己的构造方法，不能继承父类的
  StudentSub2(this.age);

  // 2. 当接口使用时，必须实现父类的方法
  @override
  run() {
    debugPrint("StudentSub: $name在跑步");
  }

  // 3. 当接口使用时，父类的属性也必须实现
  @override
  String? name;
}

/// 实现抽象类
class StudentSub4 implements BasePerson2  {
  final int age;

  // 1. implements里不能有super，即不能调用基类的构造方法
  // 也就是说下面的构造方法是不被允许的
  // StudentSub(this.age, String name) : super(name);
  // 只能写自己的构造方法，不能继承父类的
  StudentSub4(this.age);

  // 2. 当接口使用时，父类的属性必须实现其getter方法
  @override
  String get name {
    return name;
  }

  // 3. 当接口使用时，不管抽象类有没有实现该方法，都必须实现该方法
  @override
  run() {
    debugPrint("StudentSub: $name在跑步");
  }

  // 4. 当接口使用时，不管抽象类有没有实现该方法，都必须实现该方法
  @override
  play() {
    debugPrint("StudentSub: $name在玩耍");
  }
}