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
      body: const ZXDHomeContent(),
    );
  }
}

class ZXDHomeContent extends StatelessWidget {
  const ZXDHomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ZXDHomeProductItem(
          title: "你好哇1",
          info: "我是猴子",
          imageUrl: "http://pic1.win4000.com/m00/ba/ae/689dcdb12a63c487312e2c2637b10f27.jpg",
        ),
        SizedBox(height: 10,),
        ZXDHomeProductItem(
          title: "你好哇2",
          info: "我是动漫美女",
          imageUrl: "http://pic1.win4000.com/wallpaper/2020-10-16/5f8951f757975.jpg",
        ),
        SizedBox(height: 10,),
        ZXDHomeProductItem(
          title: "你好哇3",
          info: "我是小猫咪",
          imageUrl: "http://pic1.win4000.com/m00/30/70/8e76a75043c7876f78ce2e9ffb5793a9.jpg",
        ),
      ],
    );
  }
}

class ZXDHomeProductItem extends StatelessWidget {
  final String title;
  final String info;
  final String imageUrl;

  static const style1 = TextStyle(fontSize: 25, color: Colors.orange);
  static const style2 = TextStyle(fontSize: 20, color: Colors.lightBlue);

  const ZXDHomeProductItem({Key? key, required this.title, required this.info, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: Colors.black38
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: style1),
          const SizedBox(height: 8,),
          Text(info, style: style2),
          const SizedBox(height: 8,),
          Image.network(imageUrl),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}


