void main(List<String> args) {
  var flag = true;

  // 这样是没问题的
  if (flag) {
    print("你好哇");
  }

  var flag2 = "这是不允许的";
  // if (flag2) {
  //   print("你好哇，这是不允许的");
  // }
}
