void main(List<String> args) {
  // 直接传入一个定义的函数
  // test(bar);

  // 匿名函数，这就类似于 block
  test(() {
    print("匿名函数被调用");
    return 30;
  });

  // 箭头函数：条件，函数体只有一行代码
  test(() => print("箭头函数被调用"));
}

// 函数可以作为另外一个函数的参数
void test(Function fun) {
  var res = fun();
  print(res);
}

// 定义的函数
void bar() {
  print("bar函数被调用");
}

int bar1(int num1, int num2) {
  print("bar1函数被调用: ${num1 + num2}");
  return num1 + num2;
}
