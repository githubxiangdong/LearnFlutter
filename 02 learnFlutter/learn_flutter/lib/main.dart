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
      body: ExpandedDemo(),
    );
  }
}


/// 5. ExpandedDemo
/// 如果 红色 的宽度是不固定，但是还要达到平分的效果，怎么做呢
/// Expanded -> FlexFit.tight, 开发里面用的最多, 空间分配问题 只与flex有关
/// flex属性，弹性系数，Row 会根据两个 Expanded 的弹性系数来决定它们占据剩下空间的比例
///
class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 2,
          child: Container(color: Colors.red, height: 100, )
        ),
        Container(color: Colors.orange, width: 100, height: 120, ),
        Container(color: Colors.green, width: 60, height: 80, ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.cyan, height: 150, )
        ),
      ],
    );
  }
}

/// 4. ColumnDemo
/// Column 的用法与 Row的用法一致
class ColumnDemo extends StatelessWidget {
  const ColumnDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(color: Colors.red, width: 80, height: 100, ),
        Container(color: Colors.orange, width: 100, height: 120, ),
        Container(color: Colors.green, width: 60, height: 80, ),
        Container(color: Colors.cyan, width: 90, height: 150, ),
      ],
    );
  }
}

/// 3. RowDemo2
/// Row/Column:继承自flex
/// Axis.horizontal ==  Row 水平布局
/// Axis.vertical == column 垂直布局
/// Row的特点：
/// - 水平方向尽可能占据比较大的空间
///  -
/// - 垂直方向包裹内容
/// MainAxisAlignment
/// - start : 默认值，沿着主轴的开始位置依次排布
/// - end : 沿着主轴的结束位置依次排布
/// - center : 沿着主轴的中心点向两侧排布
/// - spaceBetween : 将左右两边的间距为0，其他的间距平分
/// - spaceAround : 左右两边的间距是其他元素间距的一半
/// - spaceEvenly : 所有间距平分空间
///
/// CrossAxisAlignment
/// - baseline : 基线对齐
/// - stretch :
class RowDemo2 extends StatelessWidget {
  const RowDemo2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(color: Colors.red, width: 80, height: 100, ),
        Container(color: Colors.orange, width: 100, height: 120, ),
        Container(color: Colors.green, width: 60, height: 80, ),
        Container(color: Colors.cyan, width: 90, height: 150, ),
      ],
    );
  }
}

/// 2. RowDemo1
/// 简单用法
class RowDemo1 extends StatelessWidget {
  const RowDemo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.red,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.bug_report_outlined),
          Text("提交", style: TextStyle(color: Colors.white, fontSize: 20),),
        ],
      ),
      onPressed: () {
        debugPrint("点击了提交");
      },
    );
  }
}

/// 1. FlexDemo
/// Flex 布局中有两个非常重要的概念，主轴 和 交叉轴
/// 主轴：就是与 布局方向一致的方向为主轴
/// 交叉轴：就是 与 布局方向垂直的方向为交叉轴
/// Row 和 Column
class FlexDemo extends StatelessWidget {
  const FlexDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: const [
        Text("你好哇， 哈哈"),
        Text("你好哇， 哈哈"),
        Text("你好哇， 哈哈"),
      ],
    );
  }
}
