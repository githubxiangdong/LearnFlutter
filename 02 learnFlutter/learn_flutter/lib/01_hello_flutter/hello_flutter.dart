import 'package:flutter/material.dart';

main() {
  // 1, runApp函数
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("hello fluter"),
          ),
          body: const Center(
            child:Text(
              "hello flutter",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 30,
                color: Colors.red,
              ),
            ),
          ),
        ),
      )
  );
}