import 'package:flutter/material.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        title: const Text("商品详情"),
      ),
      body: const ZXDHomeContent(message: "你好哇，zxd",),
    );
  }
}

class ZXDHomeContent extends StatefulWidget {
  // StatefulWidget 从父 传值
  final String message;
  const ZXDHomeContent({Key? key, required this.message}) : super(key: key);
  
  @override
  State<ZXDHomeContent> createState() => _ZXDHomeContentState();
}

///
/// 为什么Flutter 在设计的时候，statefulWidget的build方法放在state中
/// 1. build出来的Widget是需要依赖state中的变量（状态、数量）
/// 2. 在Flutter的运行过程中：
///   Widget是不断的销毁和创建的;
///   当我们自己的状态改变时，并不希望创建一个新的state，而是用一个state类管理里面Widget的创建和销毁
/// Widget(描述信息) -> element -> render
// 命名规范：这个state类的命名是 以 _ 开头的
class _ZXDHomeContentState extends State<ZXDHomeContent> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _getButtons(),
          Text("我是计数器：$_counter, ${widget.message}", style: const TextStyle(fontSize: 20),)
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 30)),
            backgroundColor: MaterialStateProperty.all(Colors.red),
          ),
          child: const Text("+"),
          onPressed: () {
            setState(() {
              _counter++;
            });
            debugPrint("点击了+");
          },
        ),
        ElevatedButton(
          child: const Text("-"),
          onPressed: () {
            setState(() {
              _counter--;
            });
            debugPrint("点击了-");
          },
        ),
      ],
    );
  }
}
