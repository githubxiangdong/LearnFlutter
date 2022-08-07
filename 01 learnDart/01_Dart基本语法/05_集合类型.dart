void main(List<String> args) {
  // 1, 列表List
  var names = ["absc", "abc", "abc", "ccd"];
  names.add("nba");

  // 奇怪的地方！！！！ 看后面

  // 2, 集合Set 去重
  var movies = {"大话西游", "星际穿越"};
  names = Set<String>.from(names).toList();
  print(names);

  // 3, 映射Map
  var info = {"name": "zxd", "age": 18};
}
