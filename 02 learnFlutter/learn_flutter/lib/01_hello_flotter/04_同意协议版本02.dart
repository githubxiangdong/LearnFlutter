import 'package:flutter/material.dart';

/// 1， 最终形成widget树
/// 2， 组件化开发思想

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
      body: ZXDContentBody(),
    );
  }
}

/// flag: 状态
/// 所有的widget 中都不能写状态
/// StatefulWidget 不能定义状态，当时可以创建一个单独的类，这个类负责维护状态
/// 继承自 StatefullWidget 的类，可以接收父widget传过来的数据 / state类
class ZXDContentBody extends StatefulWidget {
  const ZXDContentBody({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ZXDContentBodyState();
  }
}

class ZXDContentBodyState extends State<ZXDContentBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value ?? true;
                });
              }
          ),
          const Text("同意协议", style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}