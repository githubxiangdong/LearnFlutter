import 'package:flutter/material.dart';
import '01_构造方法/start_rating.dart';
import '02_继承/heart_rating.dart';
import '03_抽象类和隐式接口/person.dart';
import '04_类成员和类方法/student_info.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// 1. 普通构造方法
    final starRating = StartRating(rating: 4,);
    final starRating2 = StartRating(rating: 3,);
    debugPrint("是否是同一个对象：${identical(starRating, starRating2)}");

    /// 2. 命名构造方法
    /// 此时对象其实是 new 出来的一个对象，但是在 2.0一上 new可以省略
    var heart1 = new StartRating.heart(rating: 4);
    var heart2 = new StartRating.heart(rating: 4);
    // debugPrint("是否是同一个对象：${identical(startRating, startRating2)}");

    /// 3. 常量构造方法
    /// 如果我传入的是一样的参数，得到的对象也是同一个，该怎么办？
    /// 常量构造方法???
    const triangle = StartRating.triangle(rating: 7);
    const triangle2 = StartRating.triangle(rating: 7);
    // debugPrint("是否是同一个对象：${identical(triangle, triangle2)}");

    /// 4. 重定向构造方法
    final circle = StartRating.circle(8);

    /// 5. 工厂构造方法
    final star1 = StartRating.withRating(9);
    final star2 = StartRating.withRating(6);
    // debugPrint("star1与star2是否是同一个对象：${star1 == star2}");

    /// 6. 单例
    final star3 = StartRating.star(3);
    final star4 = StartRating.star(8);
    // debugPrint("star与star2是否是同一个对象：${identical(star3, star4)}");

    /// 7. 继承
    /// 如果我想实现一个心形的评分，直接继承就可以实现
    final heartRating = HeartRating(rating: 1,);

    /// 8. 抽象类
    final person = Person();
    person.running();
    person.playing();
    debugPrint("${person.height()}");

    /// 9. 隐式接口
    final student = Student();
    student.running();
    student.playing();
    student.eating();
    student.drinking();

    /// 10. 类方法和类属性
    // 实例对象
    final stuInfo = StudentInfo();
    stuInfo.grade = 90;
    stuInfo.study();

    // 类对象
    StudentInfo.name = "小明";
    StudentInfo.run();

    /// 系统widget
    const cen1 = Center(
      child: Text("zxd"),
    );
    const cen2 = Center(
      child: Text("zxd"),
    );
    // debugPrint("cen1 是否与 cen2一样： ${cen1 == cen2}");

    return Scaffold(
      appBar: AppBar(
        title: const Text("测试demo"),
      ),
      body: Center(child: star3),
    );
  }
}