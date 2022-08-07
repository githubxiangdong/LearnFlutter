/**
 * 1, 如果引入库中的方法与本类中的方法冲突了，可以利用 as 关键字给引入的库起别名
 * 2, 默认情况下导入一个库时，导入的是所有的内容
 *    * show：执行要导入的内容
 *    * hide：隐藏某个导入的内容，导入其他内容
 * 3, 公共头文件的导入，export
 * 4, 利用下划线来区分公共和私有方法
 *
 */
import 'utils/math_utils.dart' as mUtils;
// import 'utils/math_utils.dart' show sum;
// import 'utils/math_utils.dart' hide sum;

// import 'utils/date_utils.dart';

// 只需要导入一个公共的头文件即可
import 'utils/utils.dart';

void main(List<String> args) {
  // 利用别名来使用引入库的函数
  print(mUtils.sum(10, 20));
  // sum(2, 3);
  // mul(3, 30); //
}

// void sum(num1, num2) {
//   print(num1 + num2);
// }
