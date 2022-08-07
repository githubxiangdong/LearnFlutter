void main(List<String> args) {
  // 1. 字符串定义
  var str1 = 'abc';
  var str2 = "abc";
  var str3 = """
        abc
        abc
        aab
        """;

  // 2, 字符串和表达式进行拼接
  var name = "zxd";
  var age = 18;
  var height = 180;

  // 强调：如果拼接的是一个变量 ${变量}，那么可以省掉 {}
  var info1 = "my name is ${name}, age is ${age}, height is $height";
  var info2 = "name is ${name}, type is ${name.runtimeType}";
  print(info1);
  print(info2);
}
