import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1. ElevatedButton
          ElevatedButton(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.all(const TextStyle( fontSize: 20 ),),
                backgroundColor: MaterialStateProperty.all(Colors.red)
            ),
            onPressed: () => debugPrint("ElevatedButton"),
            child: const Text("ElevatedButton"),
          ),

          // 2. TextButton
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(80, 44), // 设置宽高
              padding: const EdgeInsets.all(5), // 内边距
              // splashFactory: NoSplash.splashFactory, // 消除涟漪
            ),
            child: const Text("TextButton", style: TextStyle(color: Colors.white, fontSize: 30),),
            onPressed: () => debugPrint("TextButton"),
          ),

          // 3. 自定义button
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
                padding: MaterialStateProperty.all(const EdgeInsets.all(0)), // 设置内边距
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // Icon(Icons.favorite, color: Colors.red,),
                  Text("TextButton", style: TextStyle(fontSize: 20, color: Colors.black),)
                ],
              ),
              onPressed: () => debugPrint("TextButton")
          ),
        ],
      ),
    );
  }
}