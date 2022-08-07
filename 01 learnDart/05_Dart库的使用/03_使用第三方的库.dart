import 'package:http/http.dart' as http;

/**
 * flutter 管理第三方是用 .yaml格式来管理
 * 写好后，在终端 执行 pub get即可
 */

void main(List<String> args) async {
  var url = Uri.https('www.baidu.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  print('Number of books about http: ${response.statusCode}.');
  print('Number of books about http: ${response.body}.');
}
