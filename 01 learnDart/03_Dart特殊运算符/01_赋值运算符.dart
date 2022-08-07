void main(List<String> args) {
  var name = "zxd";

  // ??=
  // 当原来的变量有值时，那么 ??= 不执行
  // 当原来的变量没有值时，那么 ??= 执行，赋值
  name ??= "xiaoli";
  // print(name);

  // ?? 用的很多
  // 与三目运算一直  ? :
  var name1 = "zxd";
  var tmp = name1 ?? "xiaoli";
  print(tmp);
}
