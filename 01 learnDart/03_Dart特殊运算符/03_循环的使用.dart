void main(List<String> args) {
  // 1. 基本的for循环
  var names = ["acv", "asv", "sscv"];
  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }

  for (var name in names) {
    print(name);
  }
}
