
class FinalAndConst  {
  // const date1 = num();

  test() {
    /// 1. finale 声明常量，一旦值被确定，后面是不能再被修改的
    final height = 180;
    // 例如，下面的写法是不被允许的
    // height = 200;

    /// 2 const 声明常量，一旦值被确定，后面是不能再被修改的
    const address = "北京中关村";
    // 例如，下面的写法是不被允许的
    // address = "海淀区";

    /// 3 final 和 const的区别
    /// const 必须赋值常量值（编译期间需要有个确定的值）
    /// final 可以通过计算/函数获取一个值（运行期间确定一个值即可）

    // 例如:
    // const 常量必须在编译期间就有一个明确的值，这个写法不被允许
    // const date1 = this.num();
    // final 可以通过计算/函数获取一个值（运行期间确定一个值即可）
    final date2 = DateTime.now();
  }
  //
  // const int num() {
  //   return 12;
  // }
}