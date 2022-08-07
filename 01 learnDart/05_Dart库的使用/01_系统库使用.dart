// 只有核心库在使用时不需要导入
import 'dart:core';

// 其他需要
import 'dart:math';

void main(List<String> args) {
  final num1 = 10;
  final num2 = 20;

  // 不用刻意导入库，用到函数时，会自动给你导入
  print(min(num1, num2));
}
