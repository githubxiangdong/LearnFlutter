
class Person {
  String? name; // late

  // setter
  set setName(String name) {
    this.name = name;
  }

  // getter
  String? get getName {
    return name;
  }
}