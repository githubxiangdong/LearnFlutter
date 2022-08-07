void main(List<String> args) {
  test((abc) {
    print(abc);
  });

  test2((a, b) {
    return a + b;
  });

  var res = test4();
  print(res(30, 40));
}

// 封装test函数，需要传入一个 函数
// 函数类型需要参数和返回值
void test(Function fun) {
  fun("abc");
}

// 阅读性比较差，需要抽一下
void test2(int fun(int a, int b)) {
  var res = fun(20, 30);
  print(res);
}

// 使用 typedef
typedef Calculate = int Function(int a, int b);

void test3(Calculate cal) {
  cal(20, 30);
}

// 函数作为返回值
Calculate test4() {
  return (num1, num2) {
    return num1 + num2;
  };
}
