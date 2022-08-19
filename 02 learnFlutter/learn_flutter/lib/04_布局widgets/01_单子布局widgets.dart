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
      body: const Center(
        child: ContainerDemo(),
      ),
    );
  }
}

/// 4. ContainerDemo
/// Container
/// Container 在开发中被使用的频率是非常高的，经常会将其作为容器组件。
/// 可以指定 宽 和 高
class ContainerDemo extends StatelessWidget {
  const ContainerDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // transform: Matrix4.rotationZ(90),
      alignment: Alignment.center,
      // color: Colors.red,
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.red,
        border: Border.all(width: 5, color: Colors.green),
      ),
      child: const Text("你好啊，xxx", style: TextStyle(fontSize: 30),),
    );
  }
}



/// 3. PaddingDemo
/// Flutter中没有Margin这样一个Widget，这是因为外边距也可以通过Padding来完成。
/// Padding 通常用于设置 子Widget 到 父Widget 的边距（你可以称之为是父组件的内边距或子Widget的外边距）。
class PaddingDemo extends StatelessWidget {
  const PaddingDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("哈哈，张向东", style: TextStyle(fontSize: 30, backgroundColor: Colors.orange),),
        ),
        Text("哈哈，张向东", style: TextStyle(fontSize: 30, backgroundColor: Colors.orange),),
        SizedBox(height: 10,),
        Text("哈哈，张向东", style: TextStyle(fontSize: 30, backgroundColor: Colors.orange),),
      ],
    );
  }
}

/// 2. CenterDemo
/// Center 继承自 Align，只是将Align的 alignment 设置成 alignment: Alignment.center
class CenterDemo extends StatelessWidget {
  const CenterDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("你好哇，xxx"),
    );
  }
}

/// 1. AlignDemo
/// Align 对齐方式：
/// widthFactor 和 heightFactor
/// 因为子组件在父组件中的对齐方式必须有一个前提，就是父组件得知道自己的范围（宽度和高度）；
/// 如果 widthFactor 和 heightFactor 不设置，那么默认 Align 会尽可能的大（尽可能占据自己所在的父组件）；
/// 我们也可以对他们进行设置，比如widthFactor设置为3，那么相对于Align的宽度是子组件跨度的3倍；
/// 如下代码：就是以 图标为中心，宽和长分别是 icon大小的3倍
class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      // alignment: Alignment(0, 0),
      widthFactor: 3,
      heightFactor:3,
      child: Icon(Icons.person_add_disabled, size: 30,),
    );
  }
}