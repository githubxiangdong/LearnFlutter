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
      body: const FadeinImageDemo(),

    );
  }
}

class FadeinImageDemo extends StatelessWidget {
  final imageurl = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20."
      "com%2Fup%2Fallimg%2F1115%2F092221102018%2F210922102018-8-1200."
      "jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,"
      "10000&q=a80&n=0&g=0n&fmt=auto?sec=1663515465&t=b0a33c7db7557fb06ceccf0477849428";

  const FadeinImageDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      fadeOutDuration: const Duration(milliseconds: 100),
      fadeInDuration: const Duration(milliseconds: 100),
      placeholder: const AssetImage("assets/images/fengjing.jpeg"),
      image: NetworkImage(imageurl),
    );
  }
}

// 2. ImageDemo
class ImageDemo extends StatelessWidget {
  const ImageDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/images/fengjing.jpeg"),
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


