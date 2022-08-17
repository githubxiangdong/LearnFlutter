import 'package:flutter/material.dart';

/// option + enter：可以快速在Text 外层一层新的组件

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("我是商品"),
      ),
      body: HomeContent(),
    );
  }
}

/// 1. statelessWidget 生命周期 构造函数 -> build方法
/// 这个地方有个bug，会打印两次，在vs里面只打印一次
// class HomeContent extends StatelessWidget {
//   HomeContent({Key? key}) : super(key: key) {
//     debugPrint("构造函数被调用了");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("build方法被调用了");
//     return const Text("我是statelessWidget");
//   }
// }


/// 2. statefulWidget 生命周期
/// StatefulWidget需要通过State来管理其数据，并且还要监控状态的改变决定是否重新build整个Widget
/// 1、执行StatefulWidget的构造函数（Constructor）来创建出StatefulWidget；
/// 2、执行StatefulWidget的createState方法，来创建一个维护StatefulWidget的State对象；
/// 其次，调用createState创建State对象时，执行State类的相关方法：
/// 1、执行State类的构造方法（Constructor）来创建State对象；
/// 2、执行initState，我们通常会在这个方法中执行一些数据初始化的操作，或者也可能会发送网络请求；
class HomeContent extends StatefulWidget {
  HomeContent({Key? key}) : super(key: key) {
    debugPrint("1 --- 调用 HomeContent 的 构造函数");
  }

  @override
  State<HomeContent> createState() {
    debugPrint("2 --- 调用 HomeContent 的 createState 函数");
    return _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {
  _HomeContentState() {
    debugPrint("3 --- 调用 _HomeContentState 的 构造函数");
  }

  @override
  void initState() {
    super.initState();
    debugPrint("4 --- 调用 _HomeContentState 的 initState 函数");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    debugPrint(" --- 调用 didChangeDependencies 函数");
  }

  @override
  void didUpdateWidget(covariant HomeContent oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    debugPrint(" --- 调用 didUpdateWidget 函数");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("5 --- 调用 _HomeContentState 的 build 函数");
    return const Text("你好哇");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    debugPrint("6 --- 调用 _HomeContentState 的 dispose 函数");
  }
}