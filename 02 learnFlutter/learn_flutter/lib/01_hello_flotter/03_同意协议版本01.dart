import 'package:flutter/material.dart';


/// 这个代码是有问题的
class ZXDContentBody extends StatelessWidget {
  // const ZXDContentBody({Key? key}) : super(key: key);

  // 需要在点击box时，改变box的状态，那么按照原生的做法是，声明一个变量来保存这个状态
  // 发现用这种方式是不起作用的
  /// 原因：
  /// StatelessWidget 无状态的widget
  /// 下面这个写法就是错误的，在 StatelessWidget 的类中是不可变的，类不可变，里面定义的所有的属性是final的
  /// 但是final 是常量，没法再改变其值
  var stauts = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: stauts,
              onChanged: (value) => stauts = value ?? false,
            ),
            const Text("同意协议", style: TextStyle(fontSize: 20),)
          ],
        )
    );
  }
}