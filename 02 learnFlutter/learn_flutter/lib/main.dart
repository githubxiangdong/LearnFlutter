import 'package:flutter/material.dart';
import 'package:learn_flutter/00_%E8%AF%AD%E6%B3%95%E5%AD%A6%E4%B9%A0/03_%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1/heart_rating.dart';

import '00_语法学习/03_面向对象/start_rating.dart';

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
    final starRating = StartRating(rating: 3,);
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
    final star = StartRating.star(7);
    final star2 = StartRating.star(8);
    // debugPrint("是否是同一个对象：${identical(star, star2)}");

    /// 6. 继承
    /// 如果我想实现一个心形的评分，直接继承就可以实现
    final heartRating = HeartRating(rating: 1,);

    return Scaffold(
      appBar: AppBar(
        title: const Text("测试demo"),
      ),
      body: Center(child: heartRating),
    );
  }
}