import 'package:flutter/material.dart';

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
        title: const Text("测试demo"),
      ),
      body: const Image(
        image: AssetImage("assets/images/fengjing.jpeg"),
      )
      // Image.asset("assets/images/fengjing.jpeg"),
    );
  }
}


// 1. 网络图片
class NetworkImageDemo extends StatelessWidget {
  const NetworkImageDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      // alignment: Alignment.topRight,
      width: 400,
      height: 100,
      // fit: BoxFit.contain,
      image: NetworkImage("http://pic1.win4000.com/m00/30/70/8e76a75043c7876f78ce2e9ffb5793a9.jpg"),
    );
  }
}


