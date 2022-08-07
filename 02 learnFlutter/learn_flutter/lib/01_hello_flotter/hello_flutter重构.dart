import 'package:flutter/material.dart';

/// 1， 最终抽成widget树
/// 2， 组件化开发

// main() {
//   // 1, runApp函数
//   runApp(const ZXDHomePage());
// }

// 转换成箭头函数
main() => runApp(const MYApp());


/// widget
/// 有状态的widget: 在运行的时候，有些data需要改变，就用 StatefulWidget
/// 无状态的widget: 在运行的时候，没有data需要改变，就用 StatelessWidget
///
class MYApp extends StatelessWidget {
  const MYApp({Key? key}) : super(key: key);

  // 重写build
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZXDHomePage(),
    );
  }
}

class ZXDHomePage extends StatelessWidget {
  const ZXDHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("hello fluter"),
      ),
      body: const ZXDContentBody(),
    );
  }
}

class ZXDContentBody extends StatelessWidget {
  const ZXDContentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child:Text(
        "hello flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
      ),
    );
  }
}