import 'package:flutter/material.dart';

/// 一般的构造函数是不能有return的返回值的，而factory构造函数须要一个return的返回值
class PersonFactory {
  final String name;
  PersonFactory({Key? key, this.name = "zxd"});

  static final Map<String, PersonFactory> _name = {};
  factory PersonFactory.withName(String name) {
    if (_name.containsKey(name)) {
      return _name[name] ?? PersonFactory(name: name);
    } else {
      final person = PersonFactory(name: name);
      _name[name] = person;
      return person;
    }
  }
}


/// 如果将 关键字 factory 取掉，直接用缓存实现，则会报不能return的错误
// class PersonFactory2 {
//   String? name;
//   PersonFactory2({Key? key, this.name = "zxd"});
//
//   static final Map<String, PersonFactory2> _name = {};
//   PersonFactory2.withName(String name) {
//     this.name = name;
//     if (_name.containsKey(name)) {
//       return _name[name] ?? PersonFactory2(name: name);
//     } else {
//       final person = PersonFactory2(name: name);
//       _name[name] = person;
//       return person;
//     }
//   }
// }