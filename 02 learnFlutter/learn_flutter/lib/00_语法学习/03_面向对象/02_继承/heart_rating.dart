import 'package:flutter/material.dart';
import '../01_构造方法/start_rating.dart';

/// 心形评分 继承子 star评分
/// dart中 类的继承使用 extends 关键字
class HeartRating extends StartRating {
  HeartRating({
    Key? key,
    required double rating,
    int count = 5,
    double size = 30,
  }) : super.heart(key: key, rating: rating, count: count, size: size,);
}