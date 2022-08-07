void main(List<String> args) {}

class Person {
  late String name;
  final int age; // 这个age只能赋值一次，一旦设置了初始化值，后面就没法更改了

  // 初始化列表
  // 为啥要这样搞，源码中经常这样写
  // 如果存在属性是 final的，就方便对命名可选参数进行初始化
  Person(this.name, {int? age}) : this.age = age ?? 10 {
    print(this.name);
  }

  // Person(this.name, {self.age = 0}); // 不能这样去初始化默认值
}
