import 'package:flutter/material.dart';

class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich( // 可拼接的一个文本
        TextSpan(
          // text: "你好哇",
          // style: TextStyle(fontSize: 30)

            children: [
              TextSpan(text: "你好哇", style: TextStyle(fontSize: 20, color: Colors.red)),
              TextSpan(text: "小张", style: TextStyle(fontSize: 40, color: Colors.green)),
              WidgetSpan(child: Icon(Icons.favorite, color: Colors.red,))
            ]
        )
    );
  }
}


/// Text 演示
class TextDemo extends StatelessWidget {
  const TextDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "我是文本textAlign: TextAlign.left,textAlign: TextAlign.left,textAlign: TextAlign.left,textAlign: TextAlign.left,textAlign: TextAlign.left,",
      textAlign: TextAlign.left,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 30, color: Colors.red),
    );
  }
}