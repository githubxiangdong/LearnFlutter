import 'package:flutter/material.dart';
import 'package:learn_flutter/00_语法学习/03_面向对象/start_rating.dart';

/// dart中 类的继承使用 extends 关键字
class HeartRating extends StartRating {
  HeartRating({
    Key? key,
    required double rating,
    int count = 5,
    double size = 30,
  }) : super.heart(key: key, rating: rating, count: count, size: size,);
}