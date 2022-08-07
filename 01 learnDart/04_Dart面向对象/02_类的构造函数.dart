void main(List<String> args) {
  var p = Person("zxd", 18);

  var p1 = Person.withNameAgeHeight("zxd", 18, 180.0);

  var p2 = Person.fromMap({"name": "zxd", "age": 18, "height": 180.0});

  print(p2.toString());
}

class Person {
  late String name;
  late int age;
  late double height;

  Person(this.name, this.age, {this.height = 0.0});

  // 命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);
  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.age = map["age"];
    this.height = map["height"];
  }

  @override
  String toString() {
    return "$name $age $height";
  }
}
