import 'package:flutter/material.dart';

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

    /// 此时对象其实是 new 出来的一个对象，但是在 2.0一上 new可以省略
    var startRating = new StartRating.heart(rating: 4);
    
    /// 再次new一个对象startRating2，startRating 和 startRating是不是同一个对象
    var startRating2 = new StartRating.heart(rating: 4);

    /// flutter: 是否是同一个对象：false，打印结果不是同一个对象
    // debugPrint("是否是同一个对象：${identical(startRating, startRating2)}");

    /// 如果我传入的是一样的参数，得到的对象也是同一个，该怎么办？
    /// 常量构造方法???
    const startRating3 = StartRating.triangle(rating: 7);
    const startRating4 = StartRating.triangle(rating: 7);

    debugPrint("是否是同一个对象：${identical(startRating3, startRating4)}");

    /// 重定向构造方法
    final circle = StartRating.circle(8);

    return Scaffold(
      appBar: AppBar(
        title: const Text("测试demo"),
      ),
      body: Center(child: circle),
    );
  }
}