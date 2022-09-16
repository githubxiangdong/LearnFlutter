import 'package:flutter/material.dart';
import '01_构造方法/person_const.dart';
import '01_构造方法/start_rating.dart';
import '02_继承/extends.dart';
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
    final starRating = StartRating(rating: 10,);
    final starRating2 = StartRating(rating: 3,);
    debugPrint("starRating与starRating2是否是同一个对象：${identical(starRating, starRating2)}");

    /// 2. 命名构造方法
    /// 此时对象其实是 new 出来的一个对象，但是在 2.0 以上 new可以省略
    var heart1 = StartRating.heart(rating: 4);
    var heart2 = StartRating.heart(rating: 4);
    // debugPrint("heart1语heart2是否是同一个对象：${identical(startRating, startRating2)}");

    /// 3. 重定向构造方法
    final circle = StartRating.circle(8);

    /// 4. 常量构造方法
    /// 如果我传入的是一样的参数，得到的对象也是同一个，该怎么办？
    /// UIWidget每次创建时下面的widget树都会重新构建，所以表面看传入的是相同的分数，其实返回的还是不同的对象
    /// to do uiwidget const 意义是啥
    const triangle = StartRating.triangle(rating: 7);
    const triangle2 = StartRating.triangle(rating: 7);
    // debugPrint("triangle与triangl2是否是同一个对象：${identical(triangle, triangle2)}");

    const pConst1 = PersonConst("ss");
    const pConst2 = PersonConst("ss");
    debugPrint("pConst1 与 pConst2是否是同一个对象: ${pConst1 == pConst2}");

    /// 5. 工厂构造方法
    final star1 = StartRating.withRating(6);
    final star2 = StartRating.withRating(6);
    debugPrint("star1与star2是否是同一个对象：${star1 == star2}");

    /// 6. 单例
    final star3 = StartRating.star(3);
    final star4 = StartRating.star(8);
    // debugPrint("star3与star4是否是同一个对象：${identical(star3, star4)}");

    /// 7. 继承
    final stuSub = StudentSub(10, "zxd");
    stuSub.run();
    // debugPrint(stuSub.name);

    final stuSub2 = StudentSub2(10);
    stuSub2.run();

    /// 8. 抽象类
    final person = Person();
    person.running();
    person.playing();
    // debugPrint("${person.height()}");

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

    ListView(itemExtent: 10,);

    String name = "测试demo";

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: const Center(child: triangle),
    );
  }
}